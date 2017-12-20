<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class RecruitmentController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('page_title'=>'Recrutement'));
    }

    /**
     * @Route("/recrutement.html", name="_recruitment")
     */
    public function indexAction()
    {
        $this->init();
        $page = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Page')->findOneById(2);
        $this->addData(array('page'=>$page));
        return $this->render('BDMNicolasFrontendBundle:Recruitment:index.html.twig',$this->getData());
    }
}
