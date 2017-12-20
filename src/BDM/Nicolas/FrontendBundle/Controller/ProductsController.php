<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;

class ProductsController extends Controller
{


    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}.html",
     *     name="_products_by_category",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"},
     *     requirements={"id_sub_category": "\d+"})
     */
    public function indexAction($id_category, $id_sub_category)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategory($id_category, $id_sub_category);
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        //$brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        //$brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->getBrandsByCategory($category->getId(), 1);
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        if ($category->getCode() == "bieres") {
            $sub_categories = $this->getDoctrine()->getRepository("BDMNicolasBackendBundle:ProductSubCategory")->findBy(array('category' => $category->getId(),
                'isActive'=>1));
        $this->addData(array('subCategories'=>$sub_categories));
        }else if($category->getCode() == "champagnes"){
            $cepages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getCepage();
            $this->addData(array('cepages'=>$cepages));
            $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->getRegionsByCategory($category->getId(), 0);
        }

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );
//        dump($vintages);
//        die();
//        dump($appelations);
//        die();

        $this->addData(array('page_title' => 'Categorie : ' . $category->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

//    /**
//     * @Route("/produits.html", name="_products")
//     */
//    public function indexAction()
//    {
//        $this->init();
//        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig',$this->getData());
//    }

    public function init()
    {
        parent::init();
        $this->addData(array('page_title' => 'Produits'));
    }

    /**
     * @Route("/produits/millesime-{vintage}.html",
     *      name="_products_by_vintage" )
     */
    public function productsByCatByVintageAction($vintage)
    {
        $this->init();
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByVintage($vintage);

        $pregion = $this->request->get('pregion');
        $pappelation = $this->request->get('pappelation');
        $pcouleur = $this->request->get('pcouleur');
        $palliance = $this->request->get('palliance');


        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams('','',$pcouleur,$palliance,'','',$vintage,'','',$pregion,$pappelation);
        

        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Millesime : ' . $vintage,
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/couleur-{color}.html",
     *      name="_products_by_color")
     */
    public function productsByColorAction($color)
    {
        $this->init();
        $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneBySlug($color);
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByColor($color->getId());

        $pregion = $this->request->get('pregion');
        $pappelation = $this->request->get('pappelation');
        $pmillesime = $this->request->get('pmillesime');
        $palliance = $this->request->get('palliance');
        $pgout = $this->request->get('pgout');
        $pcat = $this->request->get('pcat');

        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$color->getId(),$palliance,$pgout,'',$pmillesime,'','',$pregion,$pappelation);
        
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1,
            $this->request->get('limit') ? $this->request->get('limit') : 9
        );


        $this->addData(array('page_title' => 'Couleur : ' . $color->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}/couleur-{color}.html",
     *      name="_products_by_category_by_color",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"})
     */
    public function productsByCatByColorAction($id_category, $id_sub_category, $color)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneBySlug($color);
        
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategoryByColor($id_category, $id_sub_category, $color->getId());
        
        $pregion = $this->request->get('pregion');
        $pappelation = $this->request->get('pappelation');
        $pmillesime = $this->request->get('pmillesime');
        $palliance = $this->request->get('palliance');
        $pgout = $this->request->get('pgout');
        $pcat = $this->request->get('pcat');

        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$color->getId(),$palliance,$pgout,'',$pmillesime,'','',$pregion,$pappelation);
        
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Couleur : ' . $color->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/marque-{brand}.html",
     *      name="_products_by_brand" )
     */
    public function productsByBrandAction($brand)
    {
        $this->init();
        $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneBySlug($brand);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByBrand($brand->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Marque : ' . $brand->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}/marque-{brand}.html",
     *      name="_products_by_category_by_brand",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"})
     */
    public function productsByCatByBrandAction($id_category, $id_sub_category, $brand)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneBySlug($brand);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategoryByBrand($id_category, $id_sub_category, $brand->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Marque : ' . $brand->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }


    /**
     * @Route("/produits/region-{region}.html",
     *      name="_products_by_region" )
     */
    public function productsByRegionAction($region)
    {
        $this->init();
        $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneBySlug($region);
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByRegion($region->getId());


        $pcouleur = $this->request->get('pcouleur');
        $pappelation = $this->request->get('pappelation');
        $pmillesime = $this->request->get('pmillesime');
        $palliance = $this->request->get('palliance');
        $pgout = $this->request->get('pgout');
        $pcat = $this->request->get('pcat');


        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$pcouleur,$palliance,$pgout,'',$pmillesime,'','',$region->getId(),$pappelation);
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );


        $this->addData(array('page_title' => 'Région : ' . $region->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }


    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}/region-{region}.html",
     *      name="_products_by_category_by_region",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"})
     */
    public function productsByCatByRegionAction($id_category, $id_sub_category, $region)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneBySlug($region);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategoryByRegion($id_category, $id_sub_category, $region->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();
        $cepages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getCepage();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        if($category->getCode() == "champagnes"){
            $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->getRegionsByCategory($category->getId(), 0);
        }

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );


        $this->addData(array('page_title' => 'Région : ' . $region->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'cepages' => $cepages,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/pays-{country}.html",
     *      name="_products_by_country" )
     */
    public function productsByCountryAction($country)
    {
        $this->init();
        $country = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneBySlug($country);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCountry($country->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Pays : ' . $country->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}/pays-{country}.html",
     *      name="_products_by_category_by_country",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"})
     */
    public function productsByCatByCountryAction($id_category, $id_sub_category, $country)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $country = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneBySlug($country);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategoryByCountry($id_category, $id_sub_category, $country->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Pays : ' . $country->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }


    /**
     * @Route("/produits/appelation-{appelation}.html",
     *      name="_products_by_appelation" )
     */
    public function productsByCatByAppelationAction($appelation)
    {
        $this->init();
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByAppelation($appelation);
        
        $pcouleur = $this->request->get('pcouleur');
        $pregion = $this->request->get('pregion');
        $pmillesime = $this->request->get('pmillesime');
        $palliance = $this->request->get('palliance');
        $pgout = $this->request->get('pgout');
        $pcat = $this->request->get('pcat');


        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$pcouleur,$palliance,$pgout,'',$pmillesime,'','',$pregion,$appelation);


        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );
        $this->addData(array('page_title' => 'Appelation : ' . $appelation,
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/cepage-{cepage}.html",
     *      name="_products_by_cepage" )
     */
    public function productsByCepageAction($cepage)
    {
        $this->init();
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCepage($cepage);
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneBy(array('code'=>'champagnes'));
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $cepages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getCepage();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );


        $this->addData(array('page_title' => 'Cépage : ' . $cepage,
            'products' => $productspag,
            'category' => $category,
            'regions' => $regions,
            'cepages' => $cepages,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id_category}-{slug_category}/cepage-{cepage}.html",
     *      name="_products_by_cepage_by_category" )
     */
    public function productsByCepageByCategoryAction($cepage, $id_category)
    {
        $this->init(); //var_dump($cepage);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCepageByCategory($cepage, $id_category);
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneBy(array('code'=>'champagnes'));
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $cepages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getCepage();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->getRegionsByCategory($id_category,0);
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );


        $this->addData(array('page_title' => 'Cépage : ' . $cepage,
            'products' => $productspag,
            'category' => $category,
            'regions' => $regions,
            'cepages' => $cepages,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/taste-{taste}.html",
     *      name="_products_by_taste" )
     */
    public function productsByCatByTasteAction($taste)
    {
        $this->init();
        $taste = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findOneBySlug($taste);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByTaste($taste->getId());

        $pcouleur = $this->request->get('pcouleur');
        $pregion = $this->request->get('pregion');
        $pmillesime = $this->request->get('pmillesime');
        $pappelation = $this->request->get('pappelation');
        $palliance = $this->request->get('palliance');
        $pcat = $this->request->get('pcat');

        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$pcouleur,$palliance,$taste,'',$pmillesime,'','',$pregion,$pappelation);


        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();


        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );
        $this->addData(array('page_title' => 'Goût : ' . $taste->getLabel(),
            'products' => $productspag,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations,
            'alliances' => $alliances));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/alliance-{alliance}.html",
     *      name="_products_by_alliance" ,
     *     defaults={"page" = 1,"limit"=99})
     */
    public function productsByAllianceAction($alliance)
    {
        $this->init();
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneBySlug($alliance);
        
        //$products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByAlliance($alliance->getId());

        $pcouleur = $this->request->get('pcouleur');
        $pregion = $this->request->get('pregion');
        $pmillesime = $this->request->get('pmillesime');
        $pappelation = $this->request->get('pappelation');
        $pgout = $this->request->get('pgout');
        $pcat = $this->request->get('pcat');

        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsAllparams($pcat,'',$pcouleur,$alliance,$pgout,'',$pmillesime,'','',$pregion,$pappelation);



        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );
        $this->addData(array('page_title' => 'Alliance : ' . $alliance->getLabel(),
            'products' => $productspag,
            'alliances' => $alliances,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'regions' => $regions,
            'appelations' => $appelations));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id_category}-{slug_category}/{id_sub_category}-{slug_sub_category}/alliance-{alliance}.html",
     *      name="_products_by_category_by_alliance",
     *     defaults={"id_category" = 0,"slug_category" = "all","id_sub_category" = 0,"slug_sub_category" = "all"})
     */
    public function productsByCatByAllianceAction($id_category, $id_sub_category, $alliance)
    {
        $this->init();
        $category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findOneById($id_category);
        $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneBySlug($alliance);
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByCategoryByAlliance($id_category, $id_sub_category, $alliance->getId());
        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintage();
        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelation();

        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();

        $paginator = $this->get('knp_paginator');

        $productspag = $paginator->paginate(
            $products, /* query NOT result */
            $this->request->get('page') ? $this->request->get('page') : 1 /*page number*/,
            $this->request->get('limit') ? $this->request->get('limit') : 9 /*limit per page*/
        );

        $this->addData(array('page_title' => 'Alliance : ' . $alliance->getLabel(),
            'products' => $productspag,
            'alliances' => $alliances,
            'colors' => $colors,
            'brands' => $brands,
            'tastes' => $tastes,
            'vintages' => $vintages,
            'category' => $category,
            'regions' => $regions,
            'appelations' => $appelations));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/{id}-{slug}.html", name="_single_product")
     */
    public function singleProductAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id);
        $product->setSeen($product->getSeen() + 1);
        $em->flush();
        $images = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductImage')->getImagesByProduct($id);
        $principal_image = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductImage')->getMainImageByProduct($id);
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->getAlliancesByProduct($id);
        $article = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->getArticleByProduct($id);
        $sub_category = $product->getSubCategory();
        $assocProducts = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAssociatedProductsToProduct($product->getId(), $sub_category->getCategory()->getId());
        $this->addData(array('product' => $product,
            'page_title' => $product->getLabel(),
            'images' => $images,
            'main_image' => $principal_image,
            'alliances' => $alliances,
            'article' => $article,
            'assocProducts' => $assocProducts));
        return $this->render('BDMNicolasFrontendBundle:Products:detail.html.twig', $this->getData());
    }

    /**
     * @Route("/produits/search.html",
     *      name="_products_by_key_word")
     */
    public function productsByKeyWordAction()
    {
        $this->init();
        $key_word = $this->request->get('key_word');
        $data = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getProductsByKeyWord($key_word);
//        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->getColorsByKeyWord($key_word);
//        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->getBrandsByKeyWord($key_word);
//        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->getTastesByKeyWord($key_word);
//        $vintages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getVintageByKeyWord($key_word);
//        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->getRegionsByKeyWord($key_word);
//        $appelations = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAppelationByKeyWord($key_word);
//        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->getAlliancesByKeyWord($key_word);
//dump($data);
//die();
        $this->addData(array('key_word' => $key_word, 'page_title' => $key_word,
            'products' => $data['products'],
            'colors' => $data['colors'],
            'regions' => $data['regions'],
            'tastes' => $data['tastes'],
            'brands' => $data['brands']));

        return $this->render('BDMNicolasFrontendBundle:Products:index.html.twig', $this->getData());
    }
}
