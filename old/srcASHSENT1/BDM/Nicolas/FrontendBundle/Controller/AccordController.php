<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;

class AccordController extends Controller
{
    /**
     * @Route("/mets-et-vin.html", name="_mets_wine")
     */
    public function indexAction()
    {
        $this->init();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $article_icons = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleIcon')->findAll();
        $article_sliders = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleSlider')->findAll();

        $this->addData(array('alliances' => $alliances,
            'articleIcons' => $article_icons,
            'articleSliders' => $article_sliders));
        return $this->render('BDMNicolasFrontendBundle:Accord:index.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('page_title' => 'Nos alliance met & vins'));
    }


}
