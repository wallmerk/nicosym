<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductAlliance;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductAllianceController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'alliances'));
        $this->addData(array('page_title' => 'Alliances'));
    }

    /**
     * @Route("/alliance", name="_backend_alliance")
     */
    public function indexAction()
    {
        $this->init();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $this->addData(array('alliances' => $alliances));


        return $this->render('BDMNicolasBackendBundle:Product/Alliance:management.html.twig', $this->getData());
    }

    /**
     * @Route("/alliance/add", name="_backend_alliance_add")
     */
    public function newAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $description = $this->request->get('description');
            $badge = $this->request->files->get('badge');


            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if (empty($description) || $description == '') {
                $this->addError('Le champs description est obligatoire');
            }

            if (empty($badge) || $badge == '') {
                $this->addError('Le champs badge est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Alliance:add.html.twig', $this->getData());
            }

            $_badge = Upload::save($this->rootPath . '/web/uploads/backend/product/alliance/', $badge);


            $alliance = new ProductAlliance();
            $alliance->setLabel($label);
            $alliance->setBadge($_badge);
            $alliance->setSlug(Url::slugify($label));
            $alliance->setDescription($description);
            $em->persist($alliance);
            $em->flush();

            $this->addSuccess('l\'alliance a été ajouté avec succès');


            return $this->redirect($this->generateUrl('_backend_alliance'));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Alliance:add.html.twig', $this->getData());
    }

    /**
     * @Route("/alliance/edit/{id}", name="_backend_alliance_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($id);
        $this->addData(array(
            'alliance' => $alliance
        ));

        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $description = $this->request->get('description');
            $badge = $this->request->files->get('badge');

            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if (empty($description) || $description == '') {
                $this->addError('Le champs description est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Alliance:edit.html.twig', $this->getData());
            }

            if ($badge) {
                Upload::delete($this->rootPath . '/web/uploads/backend/product/alliance/', $alliance->getBadge());
                $_badge = Upload::save($this->rootPath . '/web/uploads/backend/product/alliance/', $badge);
                $alliance->setBadge($_badge);
            }


            $alliance->setLabel($label);
            $alliance->setSlug(Url::slugify($label));
            $alliance->setDescription($description);
            $em->flush();

            $this->addSuccess('l\'alliance a été modifié avec succès');


            return $this->redirect($this->generateUrl('_backend_alliance'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Alliance:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/alliance/delete/{id}", name="_backend_alliance_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($id);
        $em->remove($alliance);
        $em->flush();
        $this->addSuccess('le goût a été supprimé avec succès');
        return $this->redirect($this->generateUrl('_backend_alliance'));
    }


    /**
     * @Route("/alliance/{id}/products", name="_backend_alliance_product")
     */
    public function ProductToAllianceAction($id)
    {
        $this->init();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($id);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findAll();
        $allianceProd = $alliance->getProducts();
        foreach ($allianceProd as $product) {
            unset($products[array_search($product, $products)]);
        }
        $this->addData(array('page_title' => 'article package'));
        $this->addData(array('allianceProducts' => $allianceProd));
        $this->addData(array('products' => $products));
        $this->addData(array('alliance' => $alliance));
        return $this->render('BDMNicolasBackendBundle:Product/Alliance:managementAllianceProduct.html.twig', $this->getData());
    }

    /**
     * @Route("/alliance/{idA}/products/{idP}/add", name="_backend_alliance_product_add")
     */
    public function addProductToAllianceAction($idA, $idP)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($idA);
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($idP);
//        dump($product);
//        dump($alliance);
//        die();
        $product->addAlliance($alliance);
        $alliance->addProduct($product);

        $em->flush();
        $this->addData(array('id' => $alliance->getId()));
        return $this->redirect($this->generateUrl('_backend_alliance_product', $this->getData()));
    }

    /**
     * @Route("/alliance/{idA}/products/{idP}/delete", name="_backend_alliance_product_delete")
     */
    public function deleteProductToAllianceAction($idA, $idP)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($idA);
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($idP);
        $alliance->removePackage($product);
        $product->removeArticle($alliance);
        // $em->persist($news);
        $em->flush();
        $this->addData(array('id' => $alliance->getId()));
        return $this->redirect($this->generateUrl('_backend_alliance_product', $this->getData()));
    }


}
