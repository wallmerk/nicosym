<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Region;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class RegionController extends Controller
{

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'regions'));
        $this->addData(array('page_title' => 'Regions'));
    }


    /**
     * @Route("/regions", name="_backend_region")
     */

    public function indexAction()
    {
        $this->init();

        $regions = $this->getDoctrine()->getRepository("BDMNicolasBackendBundle:Region")->findAll();
        $this->addData(array('regions' => $regions));


        return $this->render('BDMNicolasBackendBundle:Product/Region:management.html.twig', $this->getData());
    }


    /**
     * @Route("/regions/add", name="_backend_region_add")
     */
    public function addAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();


        if ($this->request->isMethod('POST')) {


            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs region est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Region:add.html.twig', $this->getData());
            }


            $region = new Region();
            $region->setLabel($label);
            $region->setSlug(Url::slugify($label));

            $em->persist($region);
            $em->flush();

            $this->addSuccess('la Region a été ajoutée avec succès');


            return $this->redirect($this->generateUrl('_backend_region'));


        }

        return $this->render('BDMNicolasBackendBundle:Product/Region:add.html.twig', $this->getData());
    }

    /**
     * @Route("/regions/edit/{id}", name="_backend_region_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneById($id);

        $this->addData(array(
            'region' => $region
        ));

        if ($this->request->isMethod('POST')) {


            $label = $this->request->get('label');

            if (empty($label) || $label == '') {
                $this->addError('Le champs region est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Region:add.html.twig', $this->getData());
            }


            $region->setLabel($label);
            $region->setSlug(Url::slugify($label));

            $em->flush();

            $this->addSuccess('la Region a été modifée avec succès');


            return $this->redirect($this->generateUrl('_backend_region'));

        }

        return $this->render('BDMNicolasBackendBundle:Product/Region:edit.html.twig', $this->getData());

    }

    /**
     * @Route("/regions/delete/{id}", name="_backend_region_delete")
     */
    public function deleteAction($id)
    {

        $this->init();

        $em = $this->getDoctrine()->getManager();
        $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneById($id);
        $em->remove($region);
        $em->flush();
        $this->addSuccess('La region a été supprimée avec succès');
        return $this->redirect($this->generateUrl('_backend_region'));
    }


}