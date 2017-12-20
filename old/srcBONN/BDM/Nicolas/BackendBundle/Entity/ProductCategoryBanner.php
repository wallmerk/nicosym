<?php

namespace BDM\Nicolas\BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ProductCategoryBanner
 *
 * @ORM\Table(name="product_category_banner")
 * @ORM\Entity(repositoryClass="BDM\Nicolas\BackendBundle\Repository\ProductCategoryBannerRepository")
 */
class ProductCategoryBanner
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="banner", type="string", length=255)
     */
    private $banner;

    /**
     * @var string
     *
     * @ORM\Column(name="link", type="string", length=255)
     */
    private $link;

    /**
     * @ORM\ManyToOne(targetEntity="ProductCategory", inversedBy="banners")
     * @ORM\JoinColumn(name="category_id", referencedColumnName="id")
     */
    protected $category;


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set banner
     *
     * @param string $banner
     *
     * @return ProductCategoryBanner
     */
    public function setBanner($banner)
    {
        $this->banner = $banner;

        return $this;
    }

    /**
     * Get banner
     *
     * @return string
     */
    public function getBanner()
    {
        return $this->banner;
    }

    /**
     * Set link
     *
     * @param string $link
     *
     * @return ProductCategoryBanner
     */
    public function setLink($link)
    {
        $this->link = $link;

        return $this;
    }

    /**
     * Get link
     *
     * @return string
     */
    public function getLink()
    {
        return $this->link;
    }

    /**
     * Set category
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductCategory $category
     *
     * @return ProductCategoryBanner
     */
    public function setCategory(\BDM\Nicolas\BackendBundle\Entity\ProductCategory $category = null)
    {
        $this->category = $category;

        return $this;
    }

    /**
     * Get category
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\ProductCategory
     */
    public function getCategory()
    {
        return $this->category;
    }
}
