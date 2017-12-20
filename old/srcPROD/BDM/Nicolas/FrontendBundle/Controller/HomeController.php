<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\HomeSlider;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;

class HomeController extends Controller
{


    /**
     * @Route("/", name="_home")
     */
    public function indexAction()
    {
        $this->init();
        $articles = array();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findByIsActive(1);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsHome();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getRandomProduct();
        $article_sliders = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleSlider')->findAll();
        if ($product)
            $articles = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->getArticlesByProduct($product->getId());
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $slider = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:HomeSlider')->findByIsPrivate(HomeSlider::PRIVACY_PUBLIC);
        $widgets = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Widget')->findAll();
        //        dump($product);
//        dump($articles);
//        die();
        $this->addData(array('brands' => $brands,
            'widgets' => $widgets,
            'products' => $products,
            'articleSliders'=>$article_sliders,
            'product' => $product,
            'recettes' => $articles ? $articles : '',
            'alliances' => $alliances,
            'sliders' => $slider));
        return $this->render('BDMNicolasFrontendBundle:Home:index.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('page_title' => 'Accueil'));
    }
}
