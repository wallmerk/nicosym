<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Product;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Url;


class ProductController extends Controller
{


    /**
     * @Route("/product", name="_backend_product")
     */
    public function indexAction()
    {
        $this->init();
        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findAll();
        $this->addData(array('products' => $products));


        return $this->render('BDMNicolasBackendBundle:Product/Product:management.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'products'));
        $this->addData(array('page_title' => 'Produits'));
    }

    /**
     * @Route("/product/add", name="_backend_product_add")
     */
    public function newAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $sub_categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $articles = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findAll();
        $countries = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findAll();
//        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findAll();
        $this->addData(array(
            'brands' => $brands,
            'sub_categories' => $sub_categories,
            'regions' => $regions,
            'colors' => $colors,
            'tastes' => $tastes,
            'alliances' => $alliances,
            'articles' => $articles,
            'countries' => $countries
//            'products'=>$products
        ));

        if ($this->request->isMethod('POST')) {
//            dump($this->request);
//            die('-------------------');
            $label = $this->request->get('label');
            $ref = $this->request->get('ref');
            $price = $this->request->get('price');
            $careLevel = $this->request->get('careLevel');
            $serviceTemperature = $this->request->get('serviceTemperature');
            $corps = $this->request->get('corps');
            $fraicheur = $this->request->get('fraicheur');
            $evolution = $this->request->get('evolution');
            $style = $this->request->get('style');
            $characteristics1 = $this->request->get('characteristics1');
            $characteristicsDetails = $this->request->get('characteristicsDetails');
            $characteristics2 = $this->request->get('characteristics2');
            $appelation = $this->request->get('appelation');
            $volume = $this->request->get('volume');
            $id_brand = $this->request->get('brand');
            $id_color = $this->request->get('color');
            $id_taste = $this->request->get('taste');
            $description = $this->request->get('description');
            $isNew = $this->request->get('isNew') == 'on' ? 1 : 0;
            $state = $this->request->get('state') == 'on' ? 1 : 0;
            $strikePrice = $this->request->get('strikePrice');
            $loyalityPrice = $this->request->get('loyalityPrice');
            $vintage = $this->request->get('vintage');
            $id_region = $this->request->get('region');
            $id_sub_category = $this->request->get('sub_category');
            $alliances_ids = $this->request->get('my_multi_select1');
            $articles_ids = $this->request->get('recette');
            $cepage = $this->request->get('cepage');
            $id_country = $this->request->get('country');


            if (empty($label) || $label == '') {
                $this->addError('Le champs nom est obligatoire');
            }

//
            if (empty($id_sub_category) || $id_sub_category == '') {
                $this->addError('Le champs sous catégorie est obligatoire');
            }
//
//            if (empty($price) || $price == '') {
//                $this->addError('Le champs prix est obligatoire');
//            }
//
//            if (empty($volume) || $volume == '') {
//                $this->addError('Le champs volume est obligatoire');
//            }
//
//
//            if (empty($vintage) || $vintage == '') {
//                $this->addError('Le champs millésime est obligatoire');
//            }
//
//
//            if (empty($description) || $description == '') {
//                $this->addError('Le champs description est obligatoire');
//            }


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Product:add.html.twig', $this->getData());
            }

            $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneById($id_brand);
            $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneById($id_region);
            $sub_category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findOneById($id_sub_category);
            $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneById($id_color);
            $taste = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findOneById($id_taste);
            $country = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneById($id_country);

            $product = new Product();
            $product->setLabel($label);
            $product->setRegularPrice($price);
            $product->setLoyalityPrice($loyalityPrice);
            $product->setStrikePrice($strikePrice);
            $product->setVolume($volume);
            $product->setDescription(nl2br($description));
            $product->setSlug(Url::slugify($label));
            $product->setBrand($brand);
            $product->setRef($ref);
            $product->setColor($color);
            $product->setCepage($cepage);
            $product->setTaste($taste);
            $product->setCareLevel($careLevel);
            $product->setServiceTemperature($serviceTemperature);
            $product->setCorps($corps);
            $product->setFraicheur($fraicheur);
            $product->setEvolution($evolution);
            $product->setStyle($style);
            $product->setCharacteristics1($characteristics1);
            $product->setCharacteristics2($characteristics2);
            $product->setCharacteristicsDetails(nl2br($characteristicsDetails));
            $product->setAppelation($appelation);
            $product->setVintage($vintage);
            $product->setState($state);
            $product->setIsNew($isNew);
            $product->setRegion($region);
            $product->setCountry($country);
            $product->setSubCategory($sub_category);
            if ($alliances_ids) {
                foreach ($alliances_ids as $alliance_id) {
                    $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($alliance_id);
                    $product->addAlliance($alliance);
                    $alliance->addProduct($product);

                }
            }
            if ($articles_ids) {
                $assoc_artl = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findOneById($articles_ids);
                $product->addArticle($assoc_artl);
                $assoc_artl->addProduct($product);
            }


            $em->persist($product);
            $em->flush();

            $this->addSuccess('Le produit a été ajouté avec succès');


            return $this->redirect($this->generateUrl('_backend_product'));
        }


        return $this->render('BDMNicolasBackendBundle:Product/Product:add.html.twig', $this->getData());
    }

    /**
     * @Route("/product/edit/{id}", name="_backend_product_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $brands = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findAll();
        $categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductCategory')->findAll();
        $sub_categories = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findAll();
        $regions = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findAll();
        $colors = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findAll();
        $tastes = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findAll();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id);
        $alliances = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findAll();
        $articles = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findAll();
        $countries = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findAll();
//        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->getAssociatedProductsByProduct($id);
        $prodAlliances = $product->getAlliances();
        $prodArticles = $product->getArticles();
//        $prodProducts = $product->getSuggestions();
        $this->addData(array(
            'product' => $product,
            'brands' => $brands,
            'categories' => $categories,
            'sub_categories' => $sub_categories,
            'regions' => $regions,
            'colors' => $colors,
            'tastes' => $tastes,
            'alliances' => $alliances,
            'prodAlliances' => $prodAlliances,
            'articles' => $articles,
            'prodArticles' => $prodArticles,
            'countries' => $countries
//            'products'=>$products,
//            'prodsProducts'=>$prodProducts
        ));

        if ($this->request->isMethod('POST')) {
//            dump($this->request);
//            die();
            $label = $this->request->get('label');
            $ref = $this->request->get('ref');
            $price = $this->request->get('price');
            $careLevel = $this->request->get('careLevel');
            $serviceTemperature = $this->request->get('serviceTemperature');
            $corps = $this->request->get('corps');
            $fraicheur = $this->request->get('fraicheur');
            $evolution = $this->request->get('evolution');
            $style = $this->request->get('style');
            $characteristics1 = $this->request->get('characteristics1');
            $characteristicsDetails = $this->request->get('characteristicsDetails');
            $characteristics2 = $this->request->get('characteristics2');
            $appelation = $this->request->get('appelation');
            $volume = $this->request->get('volume');
            $id_brand = $this->request->get('brand');
            $id_color = $this->request->get('color');
            $id_taste = $this->request->get('taste');
            $description = $this->request->get('description');
            $isNew = $this->request->get('isNew') == 'on' ? 1 : 0;
            $state = $this->request->get('state') == 'on' ? 1 : 0;
            $strikePrice = $this->request->get('strikePrice');
            $loyalityPrice = $this->request->get('loyalityPrice');
            $vintage = $this->request->get('vintage');
            $id_region = $this->request->get('region');
            $id_sub_category = $this->request->get('sub_category');
            $alliances_ids = $this->request->get('my_multi_select1');
            $articles_ids = $this->request->get('recette');
            $cepage = $this->request->get('cepage');
            $id_country = $this->request->get('country');


//            if (empty($label) || $label == '') {
//                $this->addError('Le champs nom est obligatoire');
//            }
//
//            if (empty($price) || $price == '') {
//                $this->addError('Le champs prix est obligatoire');
//            }
//
//            if (empty($volume) || $volume == '') {
//                $this->addError('Le champs volume est obligatoire');
//            }
//
//
//            if (empty($vintage) || $vintage == '') {
//                $this->addError('Le champs millésime est obligatoire');
//            }
//
//
//            if (empty($description) || $description == '') {
//                $this->addError('Le champs description est obligatoire');
//            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Product/Product:add.html.twig', $this->getData());
            }

            $brand = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductBrand')->findOneById($id_brand);
            $region = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Region')->findOneById($id_region);
            $sub_category = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductSubCategory')->findOneById($id_sub_category);
            $color = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductColor')->findOneById($id_color);
            $taste = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductTaste')->findOneById($id_taste);
            $country = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Country')->findOneById($id_country);


            $product->setLabel($label);
            $product->setRegularPrice($price);
            $product->setLoyalityPrice($loyalityPrice);
            $product->setStrikePrice($strikePrice);
            $product->setVolume($volume);
            $product->setDescription(nl2br($description));
            $product->setBrand($brand);
            $product->setColor($color);
            $product->setTaste($taste);
            $product->setCareLevel($careLevel);
            $product->setServiceTemperature($serviceTemperature);
            $product->setCorps($corps);
            $product->setFraicheur($fraicheur);
            $product->setEvolution($evolution);
            $product->setRef($ref);
            $product->setStyle($style);
            $product->setCepage($cepage);
            $product->setCharacteristics1($characteristics1);
            $product->setCharacteristics2($characteristics2);
            $product->setCharacteristicsDetails(nl2br($characteristicsDetails));
            $product->setAppelation($appelation);
            $product->setVintage($vintage);
            $product->setRegion($region);
            $product->setCountry($country);
            $product->setSubCategory($sub_category);
            $product->setSlug(Url::slugify($label));
            $product->setIsNew($isNew);
            $product->setState($state);

            foreach ($product->getAlliances() as $all) {
                $product->removeAlliance($all);
                $all->removeProduct($product);
            }

            if ($alliances_ids) {
                foreach ($alliances_ids as $alliance_id) {
                    $alliance = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ProductAlliance')->findOneById($alliance_id);
                    $product->addAlliance($alliance);
                    $alliance->addProduct($product);

                }
            }

            foreach ($product->getArticles() as $all) {
                $product->removeArticle($all);
                $all->removeProduct($product);
            }

            if ($articles_ids) {
                $assoc_artl = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findOneById($articles_ids);
                $product->addArticle($assoc_artl);
                $assoc_artl->addProduct($product);
            }


            $em->flush();

            $this->addSuccess('Le produit a été modifié avec succès');


            return $this->redirect($this->generateUrl('_backend_product'));
        }

        return $this->render('BDMNicolasBackendBundle:Product/Product:edit.html.twig', $this->getData());
    }

    /**
     * @Route("/product/delete/{id}", name="_backend_product_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $product = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findOneById($id);
        $em->remove($product);
        $em->flush();
        $this->addSuccess('Le produit a été supprimé avec succès');
        return $this->redirect($this->generateUrl('_backend_product'));
    }

}
