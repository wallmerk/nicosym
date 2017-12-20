<?php

namespace BDM\Nicolas\BackendBundle\Repository;

/**
 * TasteRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class ProductTasteRepository extends \Doctrine\ORM\EntityRepository
{
    public function getTastesByCategory($id_category, $id_sub_category, $table = '', $criteria = '')
    {
        $qb = $this->createQueryBuilder('t')
            ->join('BDMNicolasBackendBundle:Product', 'p', 'WITH', 't.id = p.taste')
            ->join('BDMNicolasBackendBundle:ProductSubCategory', 's', 'WITH', 'p.sub_category = s.id');
        if ($table == 'alliance') {
            $qb->innerJoin('p.alliances', 'a', 'WITH', 'a.slug = :alliance')
                ->setParameter('alliance', $criteria);
        }
        if ($id_sub_category != 0) {
            $qb->where('s.id = :id_sub_category')
                ->setParameter('id_sub_category', $id_sub_category);
        } else {
            $qb->join('BDMNicolasBackendBundle:ProductCategory', 'c', 'WITH', 'c.id = s.category')
                ->where('c.id = :id')
                ->setParameter('id', $id_category);
        }
        return $qb->getQuery()
            ->getResult();
    }

    public function getTastesByAlliance($alliance)
    {
        return $this->createQueryBuilder('t')
            ->join('BDMNicolasBackendBundle:Product', 'p', 'WITH', 't.id = p.taste')
            ->innerJoin('p.alliances', 'a', 'WITH', 'a.id = :id_alliance')
            ->setParameter('id_alliance', $alliance)
            ->getQuery()
            ->getResult();
    }


    public function getTastesByProducts($ids)
    {
        $em = $this->getEntityManager();
        $qb = $em->createQueryBuilder();
        $qb->select('t');
        $qb->from('BDMNicolasBackendBundle:ProductTaste', 't');
        $qb->where($qb->expr()->in('t.id', $ids));

        return $qb->getQuery()->getResult();
    }

}