<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Country;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Url;


class CountryController extends Controller
{

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'countries'));
        $this->addData(array('page_title' => 'Countries'));
    }


    /**
     * @Route("/country", name="_backend_country")
     */

    public function indexAction()
    {
        $this->init();

        $countries = $this->getDoctrine()->getRepository("BDMNicolasBackendBundle:Country")->findAll();
        $this->addData(array('countries'=>$countries));


        return $this->render('BDMNicolasBackendBundle:Product/Country:management.html.twig', $this->getData());
    }


    /**
     * @Route("/country/add", name="_backend_country_add")
     */
    public function addAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();


        if($this->request->isMethod('POST')) {

            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs pays est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Country:add.html.twig', $this->getData());
            }

            $country = new Country();
            $country->setLabel($label);
            $country->setSlug(Url::slugify($label));

            $em->persist($country);
            $em->flush();

            $this->addSuccess('le pays a été ajoutée avec succès');


            return $this->redirect($this->generateUrl('_backend_country'));

        }

        return $this->render('BDMNicolasBackendBundle:Product/Country:add.html.twig', $this->getData());
    }

    /**
     * @Route("/country/edit/{id}", name="_backend_country_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $country  	= $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneById($id);

        $this->addData(array('country' => $country));

        if($this->request->isMethod('POST')) {


            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs pays est obligatoire');
            }
            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Country:edit.html.twig', $this->getData());
            }
            $country->setLabel($label);
            $country->setSlug(Url::slugify($label));

            $em->flush();

            $this->addSuccess('le pays a été modifée avec succès');


            return $this->redirect($this->generateUrl('_backend_country'));

        }

        return $this->render('BDMNicolasBackendBundle:Product/Country:edit.html.twig', $this->getData());

    }

    /**
     * @Route("/country/delete/{id}", name="_backend_country_delete")
     */
    public function deleteAction($id)
    {

        $this->init();

        $em = $this->getDoctrine()->getManager();
        $country = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneById($id);
        $em->remove($country);
        $em->flush();
        $this->addSuccess('Le pays a été supprimée avec succès');
        return $this->redirect($this->generateUrl('_backend_country'));
    }


}