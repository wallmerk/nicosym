<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class HistoryController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('page_title'=>'Notre histoire'));
    }

    /**
     * @Route("/notre-histoire.html", name="_history")
     */
    public function indexAction()
    {
        $this->init();
        $page = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Page')->findOneById(1);
        $this->addData(array('page'=>$page));
        return $this->render('BDMNicolasFrontendBundle:History:index.html.twig',$this->getData());
    }
}
