<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductSubCategory;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductSubCategoryController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'product_sub_category'));
        $this->addData(array('page_title' => 'Catégorie Produits'));
    }


    /**
     * @Route("/products/sub-category", name="_backend_product_sub_category")
     */
    public function indexAction()
    {
        $this->init();

        $repository = $this->getDoctrine()
            ->getRepository('BDMNicolasBackendBundle:ProductSubCategory');

        $sub_categories = $repository->findAll();

        $this->addData(array('page_title' => 'Catégorie Produits'));
        $this->addData(array('sub_categories' => $sub_categories));

        return $this->render('BDMNicolasBackendBundle:Product/SubCategory:management.html.twig', $this->getData());
    }

    /**
     * @Route("/products/sub-category/add", name="_backend_product_sub_category_add")
     */
    public function addAction()
    {
        $this->init();
        $categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findAll();
        $this->addData(array('page_title' => 'Catécorie Produits',
            'categories' => $categories));

        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $code = $this->request->get('code');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;
            $id_cat = $this->request->get('category');

            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($code) || $code == null) {
                $this->addError('Le champs code est obligatoire');
            }


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/SubCategory:add.html.twig', $this->getData());
            }

            $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_cat);

            $sub_category = new ProductSubCategory();
            $sub_category->setLabel($label);
            $sub_category->setSlug(Url::slugify($label));
            $sub_category->setCode($code);
            $sub_category->setIsActive($isActive);
            $sub_category->setCategory($category);

            $em = $this->getDoctrine()->getManager();
            $em->persist($sub_category);
            $em->flush();

            $this->addSuccess('Categorie ajoutee avec succes');

            return $this->redirect($this->generateUrl('_backend_product_sub_category'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/SubCategory:add.html.twig', $this->getData());
    }


    /**
     * @Route("/products/sub-category/edit/{id}", name="_backend_product_sub_category_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $sub_category = $em->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findOneById($id);
        $categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findAll();

        $this->addData(array('page_title' => 'Catégorie Produits',
            'sub_category' => $sub_category,
            'categories' => $categories));

        if ($this->request->isMethod('POST')) {

            $label = $this->request->get('label');
            $code = $this->request->get('code');
            $isActive = $this->request->get('isActive') == 'on' ? 1 : 0;
            $id_cat = $this->request->get('category');

            if (empty($label) || $label == null) {
                $this->addError('Le champs titre est obligatoire');
            }

            if (empty($code) || $code == null) {
                $this->addError('Le champs titre est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/SubCategory:edit.html.twig', $this->getData());
            }
            $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_cat);


            $sub_category->setLabel($label);
            $sub_category->setSlug(Url::slugify($label));
            $sub_category->setCode($code);
            $sub_category->setIsActive($isActive);
            $sub_category->setCategory($category);

            $em->flush();
            $this->addSuccesses(array('Catégorie mis-a-jour avec succès.'));
            return $this->redirect($this->generateUrl('_backend_product_sub_category'));
        }
        $this->addData(array('sub_category' => $sub_category));


        return $this->render('BDMNicolasBackendBundle:Product/SubCategory:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/products/sub-category/state/{id}/{state}", name="_backend_product_sub_category_state")
     */
    public function stateAction($id, $state)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $sub_category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findOneById($id);

        $sub_category->setIsActive($state);
        $em->flush();

        $message = $state == 0 ? 'dêsactivée' : 'activée';
        $this->addSuccess('Category ' . $message . ' avec succès.');

        return $this->redirect($this->generateUrl('_backend_product_sub_category'));
    }

}