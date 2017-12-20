<?php

namespace BDM\Nicolas\BackendBundle\Repository;

/**
 * ProductRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ProductRepository extends \Doctrine\ORM\EntityRepository
{

    public function getProductsByCategory($id_category, $id_sub_category)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {
            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->getQuery();
    }

    public function getVintage()
    {
        return $this->createQueryBuilder('p')
            ->select('p.vintage')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.vintage !=:notEmpty')
            ->setParameter('notEmpty', '')
            ->andWhere("p.vintage LIKE '%20%'")
            ->groupBy('p.vintage')
            ->getQuery()
            ->getResult();
    }

    public function getVintageByAlliance($alliance)
    {
        return $this->createQueryBuilder('p')
            ->select('p.vintage')
            ->innerJoin('p.images', 'i')
            ->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->setParameter('id_alliance', $alliance)
            ->groupBy('p.vintage')
            ->getQuery()
            ->getResult();
    }

    public function getAppelationByAlliance($alliance)
    {
        return $this->createQueryBuilder('p')
            ->select('p.appelation')
            ->innerJoin('p.images', 'i')
            ->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->setParameter('id_alliance', $alliance)
            ->groupBy('p.appelation')
            ->getQuery()
            ->getResult();
    }

    public function getProductsByVintage($vintage)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.vintage= :vintage')
            ->setParameter('vintage', $vintage)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByAppelation($appelation)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.appelation= :appelation')
            ->setParameter('appelation', $appelation)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByCepage($cepage)
    {
        $explode = explode('_', $cepage); //var_dump($cepage); exit();

        $return = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 's.category = c.id');
           /* ->andWhere('p.cepage= :cepage')*/

               foreach($explode as $key)
               {
                   $return->andWhere("p.cepage='".$key."'");
               }

            $return->andWhere('p.state = :active')
            ->andWhere('c.code=:codeCat')
            /*->setParameter('cepage', $cepage)*/
            ->setParameter('active', 1)
            ->setParameter('codeCat', 'champagnes')
            ->getQuery();


        return $return;

    }

    public function getProductsByCepageByCategory($cepage, $category)
    {
        $explode = explode('_', $cepage);

        $return = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 's.category = c.id')
            ->andWhere('c.id = :id')
            ->setParameter('id', $category);
        /* ->andWhere('p.cepage= :cepage')*/

        foreach($explode as $key)
        {
            if($key != '')
            {
                $return->andWhere("p.cepage LIKE '%".$key."%'");
                //var_dump($key);
            }
        }
        //exit();

        $data =  $return->andWhere('p.state = :active')
            //->andWhere('c.code=:codeCat')
            /*->setParameter('cepage', $cepage)*/
            ->setParameter('active', 1)
            //->setParameter('codeCat', 'champagnes')
            ->getQuery()
            ->getResult();
            //->getSql(); var_dump($data); exit();



        //var_dump($data);
        return $data;


        /*$qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {

            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->andWhere('p.region= :id_region')
            ->setParameter('id_region', $region)
            ->getQuery();*/
    }

    public function getProductsByColor($color)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.color= :id_color')
            ->setParameter('id_color', $color)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByCategoryByColor($id_category, $id_sub_category, $color)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {

            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->andWhere('p.color= :id_color')
            ->setParameter('id_color', $color)
            ->getQuery();
    }

    public function getProductsByBrand($brand)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.brand= :id_brand')
            ->setParameter('id_brand', $brand)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByCategoryByBrand($id_category, $id_sub_category, $brand)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {

            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->andWhere('p.brand= :id_brand')
            ->setParameter('id_brand', $brand)
            ->getQuery();
    }

    public function getProductsByRegion($region)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.region= :id_region')
            ->setParameter('id_region', $region)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByCategoryByRegion($id_category, $id_sub_category, $region)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {

            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->andWhere('p.region= :id_region')
            ->setParameter('id_region', $region)
            ->getQuery();
    }

    public function getProductsByCountry($country)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.country= :id_country')
            ->setParameter('id_country', $country)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }

    public function getProductsByCategoryByCountry($id_category, $id_sub_category, $country)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {

            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->andWhere('p.country= :id_country')
            ->setParameter('id_country', $country)
            ->getQuery();
    }

    public function getProductsByTaste($taste)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.taste= :id_taste')
            ->setParameter('id_taste', $taste)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();
    }


    public function getProductsByAlliance($alliance)
    {
        return $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->setParameter('id_alliance', $alliance)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery();

    }

    public function getProductsByCategoryByAlliance($id_category, $id_sub_category, $alliance)
    {
        $qb = $this->createQueryBuilder('p')
            ->innerJoin('p.images', 'i')
            ->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.cepage  = s.id');
        $qb->andWhere('p.state = :active')
            ->setParameter('active', 1);
        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {
            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }

        return $qb->setParameter('id_alliance', $alliance)
            ->getQuery();

    }

    public function getAppelation()
    {
        return $this->createQueryBuilder('p')
            ->select('p.appelation')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.appelation!=:notEmpty')
            ->setParameter('notEmpty', '')
            ->groupBy('p.appelation')
            ->getQuery()
            ->getResult();
    }

    public function getCepage()
    {
        $data =  $this->createQueryBuilder('p')
            ->select('p.cepage')
            ->innerJoin('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'p.sub_category = s.id')
            ->andWhere("p.cepage NOT LIKE ''")
            ->andWhere('c.code=:codeCat')
            ->setParameter('codeCat', 'champagnes')
            ->groupBy('p.cepage')
            ->andWhere("s.id NOT LIKE '1'") //exclure les vins
            ->getQuery()  //->getSQL(); var_dump($data); exit();
            ->getResult();


            //AND p3_.code = "champagnes" AND p0_.sub_category_id NOT LIKE '1'

        $raw = array();

        //$data = array_unique($data);

        foreach ($data as $cepage)
        {
            if(is_array($cepage))
            {
                $expl = explode(',', $cepage['cepage']);

                foreach ($expl as $item)
                {
                    if($item != '')
                    {
                        $raw = array_merge($raw, array(str_replace('.', '', $item)));
                    }
                }
            }

            else
                $raw = array_merge($raw, array(0 => str_replace('.', '', $cepage)));
        }

        $filtered = array();
        $i = 0;

        foreach($raw as $item)
        {
            if (!in_array($filtered, array(ucfirst($item)))) {
                $filtered[$i] = ucfirst($item);
            }
            $i++;
        }

        $filtered = array_unique($filtered); //var_dump($filtered); exit();
        return $filtered;
    }

    public function getRandomProduct()
    {
        return $this->createQueryBuilder('p')
            ->addSelect('RAND() as HIDDEN rand')
            ->join('p.articles', 'a')
            ->join('p.images', 'i')
            ->orderBy('rand')
            ->setMaxResults(1)
            ->getQuery()
            ->getOneOrNullResult();
    }

    public function getAssociatedProductsToProduct($id_product, $id_category)
    {
        return $this->createQueryBuilder('p')
            ->join('p.images', 'i')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category  = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
            ->andWhere('c.id = :id_category')
            ->andWhere('p.id <> :id_product')
            ->setParameter('id_category', $id_category)
            ->setParameter('id_product', $id_product)
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->getQuery()
            ->getResult();
    }

    public function getProductsHome()
    {
        return $this->createQueryBuilder('p')
            ->addSelect('RAND() as HIDDEN rand')
            ->innerJoin('p.images', 'i')
            ->andWhere('p.state = :active')
            ->setParameter('active', 1)
            ->orderBy('rand')
            ->setMaxResults(6)
            ->getQuery()
            ->getResult();
    }

    public function getProductsByKeyWord($key)
    {
        $em = $this->getEntityManager();
        if ($key != '') {
            $i = 0;
            $search_string = '(';
            $keys = explode(' ', $key);
            foreach ($keys as $_key) {
                $search_string .= '(p.label LIKE \'%' . $_key . '%\'
                                    OR p.description LIKE \'%' . $_key . '%\'
                                    OR p.careLevel LIKE \'%' . $_key . '%\'
                                    OR p.serviceTemperature LIKE \'%' . $_key . '%\'
                                    OR p.appelation LIKE \'%' . $_key . '%\'
                                    OR p.vintage LIKE \'%' . $_key . '%\'
                                    OR p.characteristics1 LIKE \'%' . $_key . '%\'
                                    OR p.characteristicsDetails LIKE \'%' . $_key . '%\'
                                    OR p.characteristics2 LIKE \'%' . $_key . '%\'
                                    OR p.cepage LIKE \'%' . $_key . '%\'
                                    )';
                if ($i + 1 < count($keys))
                    $search_string .= ' AND ';
                $i++;
            }
            $search_string .= ')';

            $multiData = $this->createQueryBuilder('p')
                
                /*->addSelect('c')
                ->addSelect('t')
                ->addSelect('r')$*/

                ->innerJoin('p.images', 'i')
                
                /*->join('BDMNicolasBackendBundle:ProductColor', 'c', 'WITH', 'p.color = c.id')
                ->join('BDMNicolasBackendBundle:ProductTaste', 't', 'WITH', 'p.taste = t.id')
                ->join('BDMNicolasBackendBundle:Region', 'r', 'WITH', 'p.region = r.id')*/

                ->andWhere($search_string)
                ->andWhere('p.state = :active')
                ->setParameter('active', 1)
                ->getQuery()
                ->getResult();

            $i = 0;
            $prods = array();
            $colors = array();
            $regions = array();
            $tastes = array();
            $brands = array();
            foreach ($multiData as $data) {
                if (method_exists($data, 'getDataType')) {
                    if ($data->getDataType() === 'color') {
                        $colors[] = $data;
                    } else if ($data->getDataType() === 'taste') {
                        $tastes[] = $data;
                    } else if ($data->getDataType() === 'region') {
                        $regions[] = $data;
                    } else if ($data->getDataType() === 'brand') {
                        $brands[] = $data;
                    }
                } else {
                    $prods[] = $data;
                }
            }
            //die();
            $data = array('products' => $prods,
                'colors' => $colors,
                'tastes' => $tastes,
                'regions' => $regions,
                'brands' => $brands);
            //dump($multiData);
            //die();
            //$data['products'] = $prods;


            return $data;
        }
    }










    //test

    public function getProductsAllparams($id_category='', $id_sub_category='', $color='', $alliance='', $taste='', $country='', $vintage='', $cepage='', $brand='', $region='', $appelation='')
    {
        $qb = $this->createQueryBuilder('p')->innerJoin('p.images', 'i');
        $qb->andWhere('p.state = :active')->setParameter('active', 1);
        

        if ($id_sub_category != 0) {
            $id_category = 0;
            $qb->andWhere('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } elseif ($id_category != 0) {


            $qb->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 's.category = c.id')
                ->andWhere('c.id = :id')
                ->setParameter('id', $id_category);
        }
        if ($appelation) {
            $qb->andWhere('p.appelation= :appelation')
            ->setParameter('appelation', $appelation);
        }
        if ($alliance != 0) {
            $qb->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->setParameter('id_alliance', $alliance);
        }
        if ($taste != 0) {
            $qb->andWhere('p.taste= :id_taste')
            ->setParameter('id_taste', $taste);
        }
        if ($country != 0) {
            $qb->andWhere('p.country= :id_country')
            ->setParameter('id_country', $country);
        }
        if ($vintage != 0) {
            $qb->andWhere('p.vintage= :vintage')
            ->setParameter('vintage', $vintage) ;
        }
        if ($color != 0) {
            $qb->andWhere('p.color= :id_color')
            ->setParameter('id_color', $color);
        }
        if ($region != 0) {
            $qb->andWhere('p.region= :id_region')
            ->setParameter('id_region', $region);
        }


        if ($cepage != 0) {
            $explode = explode('_', $cepage); //var_dump($cepage); exit();

            $qb->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id')
            ->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 's.category = c.id');

               foreach($explode as $key)
               {
                   $return->andWhere("p.cepage='".$key."'");
               }

            $return->andWhere('p.state = :active')
            ->andWhere('c.code=:codeCat')
            ->setParameter('codeCat', 'champagnes');

        }
        if ($brand != 0) {
           $qb->andWhere('p.brand= :id_brand')
              ->setParameter('id_brand', $brand);
        }

        return $qb->getQuery();

    }












}