<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class AccountController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('page_title'=>'Création de compte'));
    }

    /***********************************
        account's controllers
    ************************************/


    /**
     * @Route("/mon_compte.html", name="_sign_up")
     */
    public function indexAction()
    {
        $this->init();
        return $this->render('BDMNicolasFrontendBundle:Account:index.html.twig',$this->getData());
    }
    
    /**
     * @Route("/edit_account.html", name="_edit_account")
     */
    public function editAction()
    {
        $this->init();
        $this->addData(array('page_title'=>'Modifier mon compte'));
        return $this->render('BDMNicolasFrontendBundle:Account:edit_account.html.twig', $this->getData());
    }


    /***********************************
        basket's controllers
    ************************************/

    /**
     * @Route("/detail_commande.html", name="_detail_commande")
     */
    public function view_detailAction()
    {
        $this->init();
        $this->addData(array('page_title'=>"mon historique d'achat"));
        return $this->render('BDMNicolasFrontendBundle:Account:detail_commande.html.twig', $this->getData());
    }

    /**
     * @Route("/recap_commande.html", name="_recap_commande")
     */
    public function recap_commandeAction()
    {
        $this->init();
        $this->addData(array('page_title'=>"panier"));
        return $this->render('BDMNicolasFrontendBundle:Account:recap_commande.html.twig', $this->getData());
    }

    /**
     * @Route("/historique_achats.html", name="_historique_achat")
     */
    public function historique_achatsAction()
    {
        $this->init();
        $this->addData(array('page_title'=>"mon historique d'achat"));
        return $this->render('BDMNicolasFrontendBundle:Account:historique_achats.html.twig', $this->getData());
    }

    /**
     * @Route("/panier_etape3.html", name="_panier_etape3")
     */
    public function panier_etape3Action()
    {
        $this->init();
        $this->addData(array('page_title'=>"panier"));
        return $this->render('BDMNicolasFrontendBundle:Account:panier_etape3.html.twig', $this->getData());
    }

    /**
     * @Route("/panier_etape2.html", name="_panier_etape2")
     */
    public function panier_etape2Action()
    {
        $this->init();
        $this->addData(array('page_title'=>"panier"));
        return $this->render('BDMNicolasFrontendBundle:Account:panier_etape2.html.twig', $this->getData());
    }
    /**
     * @Route("/panier_etape1.html", name="_panier_etape1")
     */
    public function panier_etape1Action()
    {
        $this->init();
        $this->addData(array('page_title'=>"panier"));
        return $this->render('BDMNicolasFrontendBundle:Account:panier_etape1.html.twig', $this->getData());
    }


}



