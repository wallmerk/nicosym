<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductBrand;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Helper\Url;
use SymfonyCoreBundle\Helper\Upload;
use Symfony\Component\HttpFoundation\Request;


class ProductBrandController extends Controller
{
    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'brands'));
        $this->addData(array('page_title' => 'Marques'));
    }

    /**
     * @Route("/products/brand", name="_backend_product_brand")
     */
    public function indexAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();


        $this->addData(array('brands' => $brands));
        return $this->render('BDMNicolasBackendBundle:Product/Brand:management.html.twig', $this->getData());
    }

    /**
     * @Route("/products/brand/add", name="_backend_product_brand_add")
     */
    public function newAction()
    {
        $this->init();

        if ($this->request->isMethod('POST')) {

            $label = $this->request->get('label');
            $order = $this->request->get('order');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;
            $logo = $this->request->files->get('logo');

            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($order) || $order == null) {
                $this->addError('Le champs ordre est obligatoire');
            }

            if (empty($logo) || $logo == null) {
                $this->addError('Le champs logo est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Brand:add.html.twig', $this->getData());
            }

            $_logo = Upload::save($this->rootPath . '/web/uploads/backend/product/brand/', $logo);

            $brand = new ProductBrand();
            $brand->setLabel($label);
            $brand->setSlug(Url::slugify($label));
            $brand->setOrder($order);
            $brand->setIsActive($isActive);
            $brand->setLogo($_logo);

            $em = $this->getDoctrine()->getManager();
            $em->persist($brand);
            $em->flush();

            $this->addSuccess('Type ajoutee avec succes');

            return $this->redirect($this->generateUrl('_backend_product_brand'));


        }


        return $this->render('BDMNicolasBackendBundle:Product/Brand:add.html.twig', $this->getData());
    }

    /**
     * @Route("/products/brand/edit/{id}", name="_backend_product_brand_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneById($id);
        $this->addData(array('brand' => $brand));

        if ($this->request->isMethod('POST')) {

            $label = $this->request->get('label');
            $order = $this->request->get('order');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;
            $logo = $this->request->files->get('logo');


            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($order) || $order == null) {
                $this->addError('Le champs ordre est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Brand:edit.html.twig', $this->getData());
            }

            $brand->setLabel($label);
            $brand->setSlug(Url::slugify($label));
            $brand->setOrder($order);
            $brand->setIsActive($isActive);

            if ($logo) {
                Upload::delete($this->rootPath . '/web/uploads/backend/product/brand/', $brand->getLogo());
                $_logo = Upload::save($this->rootPath . '/web/uploads/backend/product/brand/', $logo);
                $brand->setLogo($_logo);
            }

            $em = $this->getDoctrine()->getManager();
            $em->flush();

            $this->addSuccess('Type ajoutee avec succes');

            return $this->redirect($this->generateUrl('_backend_product_brand'));


        }

        return $this->render('BDMNicolasBackendBundle:Product/Brand:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/products/brand/delete/{id}", name="_backend_product_brand_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneById($id);
        Upload::delete($this->rootPath . '/web/uploads/backend/product/brand/', $brand->getLogo());

        $em->remove($brand);
        $em->flush();
        return $this->redirect($this->generateUrl('_backend_product_brand'));
    }

    /**
     * @Route("/products/brand/state/{id}/{state}", name="_backend_product_brand_state")
     */
    public function stateAction($id, $state)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneById($id);
        $brand->setIsActive($state);
        $em->flush();

        $message = $state == 0 ? 'dêsactivée' : 'activée';
        $this->addSuccess('Type ' . $message . ' avec succès.');

        return $this->redirect($this->generateUrl('_backend_product_brand'));
    }


}
