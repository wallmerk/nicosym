<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class DefaultController extends Controller
{


    public function init()
    {
        parent::init();
    }

    /**
     * @Route("/def", name="_homeee")
     */
    public function indexAction()
    {
        $this->init();
        return $this->render('BDMNicolasFrontendBundle::layout.html.twig');
    }
}
