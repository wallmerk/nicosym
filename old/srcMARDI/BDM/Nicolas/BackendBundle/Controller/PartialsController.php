<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class PartialsController extends Controller
{
    public function init()
    {
        parent::init();
    }

    public function notifications()
    {

    }

    public function flashbagAction()
    {
        $this->init();
        return $this->render('BDMNicolasBackendBundle:Partials:flashbag.html.twig', $this->getData());
    }
}