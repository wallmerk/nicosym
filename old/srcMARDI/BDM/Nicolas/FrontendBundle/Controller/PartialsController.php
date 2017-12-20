<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;

class PartialsController extends Controller
{
    public function navigationAction()
    {
        $this->init();
        $categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findBy(array('isActive' => 1));
        $data = array();
        foreach ($categories as $category) {
            $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->getRegionsByCategory($category->getId(), 0);
            $countries = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->getCountriesByCategory($category->getId(), 0);
            $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->getColorsByCategory($category->getId(), 0);
            $sub_categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->getSubCatsByCategory($category->getId());
            $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->getBrandsByCategory($category->getId(), 0);
$cepages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getCepage();
            array_push($data, array('category' => $category,
                'regions' => $regions,
                'countries' => $countries,
                'colors' => $colors,
                'sub_categories' => $sub_categories,
                'brands' => $brands,
                'cepages'=>$cepages));
        }
//        dump($data);
//        die();
        $this->addData(array('data' => $data));
        return $this->render('BDMNicolasFrontendBundle:Partials:navigation.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
    }

    public function navigationMobileAction()
    {
        $this->init();
        $categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findAll();
        $this->addData(array('categories' => $categories));
        return $this->render('BDMNicolasFrontendBundle:Partials:navigationMobile.html.twig', $this->getData());

    }


    public function expertiseAction()
    {
        $this->init();
        $blocks = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:FooterBlock')->findAll();
        $this->addData(array('blocks' => $blocks));
        return $this->render('BDMNicolasFrontendBundle:Partials:expertise.html.twig', $this->getData());
    }
}
