<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Product;
use BDM\Nicolas\BackendBundle\Entity\ProductImage;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductImageController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'product_image'));
        $this->addData(array('page_title' => 'Images'));
    }

    /**
     * @Route("/product/{id}/images", name="_backend_product_image")
     */
    public function indexAction($id)
    {
        $this->init();
        $images = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductImage')->getImagesByProduct($id);
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id);
        $this->addData(array('images' => $images,
            'product' => $product));
        return $this->render('BDMNicolasBackendBundle:Product/Image:management.html.twig', $this->getData());
    }

    /**
     * @Route("/product/{id}/images/add", name="_backend_product_image_add")
     */
    public function newAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id);
        $this->addData(array('product' => $product));
        if ($this->request->isMethod('POST')) {

            $file = $this->request->files->get('file');
            $isMain = $this->request->get('isMain') == 'on' ? 1 : 0;


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Image:add.html.twig', $this->getData());
            }


            $_file = Upload::save($this->rootPath . '/web/uploads/backend/product/image/', $file);

            $image = new ProductImage();
            $image->setFile($_file);
            $image->setIsMain($isMain);
            $em->persist($image);
            $image->setProduct($product);
            $em->flush();

            $this->addSuccess('Le produit a été ajouté avec succès');


            return $this->redirect($this->generateUrl('_backend_product_image', array('id' => $product->getId())));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Image:add.html.twig', $this->getData());
    }

    /**
     * @Route("/product/{id_product}/images/edit/{id_image}", name="_backend_product_image_edit")
     */
    public function editAction($id_product, $id_image)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id_product);
        $image = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductImage')->findOneById($id_image);
        $this->addData(array('image' => $image, 'product' => $product));
        if ($this->request->isMethod('POST')) {
            $file = $this->request->files->get('file');
            $isMain = $this->request->get('isMain') == 'on' ? 1 : 0;


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Image:add.html.twig', $this->getData());
            }

            if (!empty($file)) {
                $_file = Upload::save($this->rootPath . '/web/uploads/backend/product/image/', $file);
                $image->setFile($_file);
            }


            $image->setIsMain($isMain);
            $image->setProduct($product);
            $em->flush();

            $this->addSuccess('Le produit a été modifié avec succès');


            return $this->redirect($this->generateUrl('_backend_product_image', array('id' => $product->getId())));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Image:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/product/{id_product}/delete/{id_image}", name="_backend_product_image_delete")
     */
    public function deleteAction($id_product,$id_image)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $image = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductImage')->findOneById($id_image);
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id_product);
        Upload::delete($this->rootPath . '/web/uploads/backend/product/image/', $image->getFile());

        $em->remove($image);
        $em->flush();
        $this->addSuccess('Le produit a été supprimé avec succès');
        return $this->redirect($this->generateUrl('_backend_product_image', array('id' => $product->getId())));
    }

}
