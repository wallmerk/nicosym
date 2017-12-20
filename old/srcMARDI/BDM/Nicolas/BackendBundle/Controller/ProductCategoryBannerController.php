<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Product;
use BDM\Nicolas\BackendBundle\Entity\ProductCategoryBanner;
use BDM\Nicolas\BackendBundle\Entity\ProductImage;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductCategoryBannerController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'category_banner'));
        $this->addData(array('page_title' => 'Banners'));
    }

    /**
     * @Route("/product/category/{id}/banners", name="_backend_product_category_banner")
     */
    public function indexAction($id)
    {
        $this->init();
        $banners = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategoryBanner')->getBannersByCategory($id);
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id);
        $this->addData(array('banners' => $banners,
            'category' => $category));
        return $this->render('BDMNicolasBackendBundle:Product/Category/Banner:management.html.twig', $this->getData());
    }

    /**
     * @Route("/product/category/{id}/banners/add", name="_backend_product_category_banner_add")
     */
    public function newAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id);
        $this->addData(array('category' => $category));
        if ($this->request->isMethod('POST')) {

            $banner = $this->request->files->get('banner');
            $link = $this->request->get('link');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Category/Banner:add.html.twig', $this->getData());
            }


            $_banner = Upload::save($this->rootPath . '/web/uploads/backend/product/category/banner/', $banner);

            $banner = new ProductCategoryBanner();
            $banner->setBanner($_banner);
            $banner->setLink($link);
            $banner->setCategory($category);
            $em->persist($banner);
            $em->flush();

            $this->addSuccess('La bannière a été ajouté avec succès');


            return $this->redirect($this->generateUrl('_backend_product_category_banner', array('id' => $category->getId())));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Category/Banner:add.html.twig', $this->getData());
    }

    /**
     * @Route("/product/category/{id_category}/banners/edit/{id_banner}", name="_backend_product_category_banner_edit")
     */
    public function editAction($id_category, $id_banner)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $banner = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategoryBanner')->findOneById($id_banner);
        $this->addData(array('banner' => $banner, 'category' => $category));
        if ($this->request->isMethod('POST')) {
            $banner_pic = $this->request->files->get('banner');
            $link = $this->request->get('link');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Category/Banner:add.html.twig', $this->getData());
            }

            if (!empty($banner_pic)) {
                Upload::delete($this->rootPath . '/web/uploads/backend/product/category/banner/', $banner->getBanner());
                $_banner = Upload::save($this->rootPath . '/web/uploads/backend/product/category/banner/', $banner_pic);
                $banner->setBanner($_banner);
            }


            $banner->setLink($link);
            $banner->setCategory($category);
            $em->flush();

            $this->addSuccess('Le bannière a été modifié avec succès');


            return $this->redirect($this->generateUrl('_backend_product_category_banner', array('id' => $category->getId())));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Category/Banner:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/product/category/{id_category}/delete/{id_banner}", name="_backend_product_category_banner_delete")
     */
    public function deleteAction($id_category,$id_banner)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $banner = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategoryBanner')->findOneById($id_banner);
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        Upload::delete($this->rootPath . '/web/uploads/backend/product/category/banner/', $banner->getBanner());

        $em->remove($banner);
        $em->flush();
        $this->addSuccess('Le produit a été supprimé avec succès');
        return $this->redirect($this->generateUrl('_backend_product_category_banner', array('id' => $category->getId())));
    }

}
