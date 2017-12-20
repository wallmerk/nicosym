<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductColor;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ProductColorController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'colors'));
        $this->addData(array('page_title' => 'Colors'));
    }

    /**
     * @Route("/color", name="_backend_color")
     */
    public function indexAction()
    {
        $this->init();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $this->addData(array('colors' => $colors));


        return $this->render('BDMNicolasBackendBundle:Product/Color:management.html.twig', $this->getData());
    }

    /**
     * @Route("/color/add", name="_backend_color_add")
     */
    public function newAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Color:add.html.twig', $this->getData());
            }



            $color = new ProductColor();
            $color->setLabel($label);
            $color->setSlug(Url::slugify($label));
            $em->persist($color);
            $em->flush();

            $this->addSuccess('La couleur a été ajoutée avec succès');


            return $this->redirect($this->generateUrl('_backend_color'));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Color:add.html.twig', $this->getData());
    }

    /**
     * @Route("/color/edit/{id}", name="_backend_color_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneById($id);
        $this->addData(array(
            'color' => $color
        ));

        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Color:add.html.twig', $this->getData());
            }



            $color->setLabel($label);
            $color->setSlug(Url::slugify($label));
            $em->flush();

            $this->addSuccess('La couleur a été modifiée avec succès');


            return $this->redirect($this->generateUrl('_backend_color'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Color:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/color/delete/{id}", name="_backend_color_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneById($id);
        $em->remove($color);
        $em->flush();
        $this->addSuccess('La couleur a été supprimée avec succès');
        return $this->redirect($this->generateUrl('_backend_color'));
    }

}