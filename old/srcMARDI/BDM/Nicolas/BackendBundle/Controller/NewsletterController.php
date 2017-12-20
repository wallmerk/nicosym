<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;


class NewsletterController extends Controller
{

    /**
     * @Route("/newsletter", name="_backend_newsletter")
     */
    public function indexAction()
    {
        $this->init();
        $newsletters = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Newsletter')->findBy(array(), array('subscriptionDate' => 'DESC'));

        $this->addData(array('newsletters' => $newsletters));
        return $this->render('BDMNicolasBackendBundle:Newsletter:management.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'newsletter'));
        $this->addData(array('page_title' => 'Newsletter'));
    }

}
