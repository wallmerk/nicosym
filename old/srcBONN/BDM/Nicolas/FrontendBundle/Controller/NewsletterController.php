<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Newsletter;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;

class NewsletterController extends Controller
{
    /**
     * @Route("/subscription.html", name="_subscription")
     */
    public function indexAction()
    {
        $this->init();

        if ($this->request->isMethod('POST')) {
            $email = $this->request->get('email');


            $newsletter = new Newsletter();
            $newsletter->setEmail($email);
            $newsletter->setSubscriptionDate(strtotime(date("H:i:s d-m-Y")));

            $em = $this->getDoctrine()->getManager();
            $em->persist($newsletter);

            $em->flush();
            return $this->redirect($_SERVER['HTTP_REFERER']);
        }


    }

    public function init()
    {
        parent::init();
        $this->addData(array('page_title' => 'Newsletter'));
    }


}
