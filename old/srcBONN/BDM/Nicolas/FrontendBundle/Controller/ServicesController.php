<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class ServicesController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('page_title'=>'Services'));
    }

    /**
     * @Route("/services.html", name="_services")
     */
    public function indexAction()
    {
        $this->init();
        $services = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Service')->findAll();
        $this->addDAta(array('services'=>$services));
        return $this->render('BDMNicolasFrontendBundle:Services:index.html.twig',$this->getData());
    }
}
