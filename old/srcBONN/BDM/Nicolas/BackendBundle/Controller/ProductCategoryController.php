<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductCategory;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductCategoryController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'product_category'));
        $this->addData(array('page_title' => 'Catégorie Produits'));
    }


    /**
     * @Route("/products/category", name="_backend_product_category")
     */
    public function indexAction()
    {
        $this->init();

        $repository = $this->getDoctrine()
            ->getRepository('BDMNicolasBackendBundle:ProductCategory');

        $categories = $repository->findAll();

        $this->addData(array('page_title' => 'Catégorie Produits'));
        $this->addData(array('categories' => $categories));

        return $this->render('BDMNicolasBackendBundle:Product/Category:management.html.twig', $this->getData());
    }

    /**
     * @Route("/products/category/add", name="_backend_product_category_add")
     */
    public function addAction()
    {
        $this->init();
        $this->addData(array('page_title' => 'Catécorie Produits'));

        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $code = $this->request->get('code');
            $description = $this->request->get('description');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;

            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($description) || $description == null) {
                $this->addError('Le champs description est obligatoire');
            }


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Category:add.html.twig', $this->getData());
            }



            $category = new ProductCategory();
            $category->setLabel($label);
            $category->setSlug(Url::slugify($label));
            $category->setCode($code);
            $category->setDescription($description);
            $category->setIsActive($isActive);

            $em = $this->getDoctrine()->getManager();
            $em->persist($category);
            $em->flush();

            $this->addSuccess('Categorie ajoutee avec succes');

            return $this->redirect($this->generateUrl('_backend_product_category'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Category:add.html.twig', $this->getData());
    }



    /**
     * @Route("/products/category/edit/{id}", name="_backend_product_category_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $category = $em->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id);

        $this->addData(array('page_title' => 'Catégorie Produits'));

        if ($this->request->isMethod('POST')) {

            $label = $this->request->get('label');
            $code = $this->request->get('code');
            $description = $this->request->get('description');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;

            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }

            if (empty($code) || $code == null) {
                $this->addError('Le champs titre est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Category:edit.html.twig', $this->getData());
            }


            $category->setLabel($label);
            $category->setSlug(Url::slugify($label));
            $category->setCode($code);
            $category->setDescription($description);
            $category->setIsActive($isActive);

            $em->flush();
            $this->addSuccesses(array('Catégorie mis-a-jour avec succès.'));
            return $this->redirect($this->generateUrl('_backend_product_category'));
        }
        $this->addData(array('category' => $category));


        return $this->render('BDMNicolasBackendBundle:Product/Category:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/products/category/state/{id}/{state}", name="_backend_product_category_state")
     */
    public function stateAction($id, $state)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id);

        $category->setIsActive($state);
        $em->flush();

        $message = $state == 0 ? 'dêsactivée' : 'activée';
        $this->addSuccess('Category '.$message.' avec succès.');

        return $this->redirect($this->generateUrl('_backend_product_category'));
    }

}
