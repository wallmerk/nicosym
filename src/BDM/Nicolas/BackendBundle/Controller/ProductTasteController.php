<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ProductTaste;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Helper\Url;


class ProductTasteController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'tastes'));
        $this->addData(array('page_title' => 'Tastes'));
    }

    /**
     * @Route("/taste", name="_backend_taste")
     */
    public function indexAction()
    {
        $this->init();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $this->addData(array('tastes' => $tastes));


        return $this->render('BDMNicolasBackendBundle:Product/Taste:management.html.twig', $this->getData());
    }

    /**
     * @Route("/taste/add", name="_backend_taste_add")
     */
    public function newAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $css_class = $this->request->get('css_class');
            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if (empty($css_class) || $css_class == '') {
                $this->addError('Le champs classe CSS est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Taste:add.html.twig', $this->getData());
            }


            $taste = new ProductTaste();
            $taste->setLabel($label);
            $taste->setCssClass($css_class);
            $taste->setSlug(Url::slugify($label));
            $em->persist($taste);
            $em->flush();

            $this->addSuccess('le goût a été ajouté avec succès');


            return $this->redirect($this->generateUrl('_backend_taste'));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Taste:add.html.twig', $this->getData());
    }

    /**
     * @Route("/taste/edit/{id}", name="_backend_taste_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $taste = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findOneById($id);
        $this->addData(array(
            'taste' => $taste
        ));

        if ($this->request->isMethod('POST')) {
            $label = $this->request->get('label');
            $css_class = $this->request->get('css_class');
            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

            if (empty($css_class) || $css_class == '') {
                $this->addError('Le champs classe CSS est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Taste:add.html.twig', $this->getData());
            }

            $taste->setLabel($label);
            $taste->setCssClass($css_class);
            $taste->setSlug(Url::slugify($label));
            $em->flush();

            $this->addSuccess('le goût a été modifié avec succès');


            return $this->redirect($this->generateUrl('_backend_taste'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Taste:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/taste/delete/{id}", name="_backend_taste_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $taste = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findOneById($id);
        $em->remove($taste);
        $em->flush();
        $this->addSuccess('le goût a été supprimé avec succès');
        return $this->redirect($this->generateUrl('_backend_taste'));
    }

}