<?php

namespace BDM\Nicolas\BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Product
 *
 * @ORM\Table(name="product")
 * @ORM\Entity(repositoryClass="BDM\Nicolas\BackendBundle\Repository\ProductRepository")
 */
class Product
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
     * @ORM\Column(name="label", type="string", length=255)
     */
    private $label;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $careLevel;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $ref;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $seen=0;
    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $serviceTemperature;


    /**
     * @var string
     *
     * @ORM\Column(type="float", precision=10, scale=3, nullable=true)
     */
    private $regularPrice;

    /**
     * @var string
     *
     * @ORM\Column(type="float", precision=10, scale=3, nullable=true)
     */
    private $strikePrice;

    /**
     * @var string
     *
     * @ORM\Column(type="float", precision=10, scale=3, nullable=true)
     */
    private $loyalityPrice;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $volume;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $corps;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $fraicheur;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $evolution;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $style;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    private $characteristics1;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    private $characteristicsDetails;

    /**
     * @var string
     *
     * @ORM\Column(type="string")
     */
    private $characteristics2;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $state;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $appelation;


    /**
     * @var string
     *
     * @ORM\Column(type="string", length=255)
     */
    private $cepage;

    /**
     * @var string
     *
     * @ORM\Column(name="description", type="text")
     */
    private $description;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $slug;


    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $vintage;

    /**
     * @var string
     *
     * @ORM\Column(type="integer")
     */
    private $isNew;

    /**
     * @ORM\ManyToOne(targetEntity="ProductBrand", inversedBy="products")
     * @ORM\JoinColumn(name="brand_id", referencedColumnName="id")
     */
    protected $brand;

    /**
     * @ORM\ManyToOne(targetEntity="Region", inversedBy="products")
     * @ORM\JoinColumn(name="region_id", referencedColumnName="id")
     */
    protected $region;

    /**
     * @ORM\ManyToOne(targetEntity="Country", inversedBy="products")
     * @ORM\JoinColumn(name="country_id", referencedColumnName="id")
     */
    protected $country;

    /**
     * @ORM\ManyToOne(targetEntity="ProductSubCategory", inversedBy="products")
     * @ORM\JoinColumn(name="sub_category_id", referencedColumnName="id")
     */
    protected $sub_category;

    /**
     * @ORM\ManyToOne(targetEntity="ProductColor", inversedBy="products", fetch="EAGER")
     * @ORM\JoinColumn(name="color_id", referencedColumnName="id")
     */
    protected $color;

    /**
     * @ORM\ManyToOne(targetEntity="ProductTaste", inversedBy="products")
     * @ORM\JoinColumn(name="taste_id", referencedColumnName="id")
     */
    protected $taste;

    /**
     * @ORM\OneToMany(targetEntity="ProductImage", mappedBy="product", cascade={"remove"})
     */
    protected $images;

    /**
     * @ORM\ManyToMany(targetEntity="ProductAlliance", inversedBy="products" )
     * @ORM\JoinTable(name="product_alliance_join")
     */
    protected $alliances;

    /**
     * @ORM\ManyToMany(targetEntity="Article", inversedBy="products" )
     * @ORM\JoinTable(name="product_article")
     */
    protected $articles;
//
//    /**
//     * @ORM\ManyToMany(targetEntity="Product")
//     * @ORM\JoinTable(name="suggestions",
//     *     joinColumns={@ORM\JoinColumn(name="product_a_id", referencedColumnName="id")},
//     *     inverseJoinColumns={@ORM\JoinColumn(name="product_b_id", referencedColumnName="id")}
//     * )
//     * @var \Doctrine\Common\Collections\ArrayCollection
//     */
//    protected $suggestions;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->images = new \Doctrine\Common\Collections\ArrayCollection();
        $this->alliances = new \Doctrine\Common\Collections\ArrayCollection();
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set label
     *
     * @param string $label
     *
     * @return Product
     */
    public function setLabel($label)
    {
        $this->label = $label;

        return $this;
    }

    /**
     * Get label
     *
     * @return string
     */
    public function getLabel()
    {
        return $this->label;
    }

    /**
     * Set careLevel
     *
     * @param string $careLevel
     *
     * @return Product
     */
    public function setCareLevel($careLevel)
    {
        $this->careLevel = $careLevel;

        return $this;
    }

    /**
     * Get careLevel
     *
     * @return string
     */
    public function getCareLevel()
    {
        return $this->careLevel;
    }

    /**
     * Set serviceTemperature
     *
     * @param string $serviceTemperature
     *
     * @return Product
     */
    public function setServiceTemperature($serviceTemperature)
    {
        $this->serviceTemperature = $serviceTemperature;

        return $this;
    }

    /**
     * Get serviceTemperature
     *
     * @return string
     */
    public function getServiceTemperature()
    {
        return $this->serviceTemperature;
    }

    /**
     * Set regularPrice
     *
     * @param float $regularPrice
     *
     * @return Product
     */
    public function setRegularPrice($regularPrice)
    {
        $this->regularPrice = $regularPrice;

        return $this;
    }

    /**
     * Get regularPrice
     *
     * @return float
     */
    public function getRegularPrice()
    {
        return $this->regularPrice;
    }

    /**
     * Set strikePrice
     *
     * @param float $strikePrice
     *
     * @return Product
     */
    public function setStrikePrice($strikePrice)
    {
        $this->strikePrice = $strikePrice;

        return $this;
    }

    /**
     * Get strikePrice
     *
     * @return float
     */
    public function getStrikePrice()
    {
        return $this->strikePrice;
    }

    /**
     * Set loyalityPrice
     *
     * @param float $loyalityPrice
     *
     * @return Product
     */
    public function setLoyalityPrice($loyalityPrice)
    {
        $this->loyalityPrice = $loyalityPrice;

        return $this;
    }

    /**
     * Get loyalityPrice
     *
     * @return float
     */
    public function getLoyalityPrice()
    {
        return $this->loyalityPrice;
    }

    /**
     * Set volume
     *
     * @param integer $volume
     *
     * @return Product
     */
    public function setVolume($volume)
    {
        $this->volume = $volume;

        return $this;
    }

    /**
     * Get volume
     *
     * @return integer
     */
    public function getVolume()
    {
        return $this->volume;
    }

    /**
     * Set corps
     *
     * @param integer $corps
     *
     * @return Product
     */
    public function setCorps($corps)
    {
        $this->corps = $corps;

        return $this;
    }

    /**
     * Get corps
     *
     * @return integer
     */
    public function getCorps()
    {
        return $this->corps;
    }

    /**
     * Set fraicheur
     *
     * @param integer $fraicheur
     *
     * @return Product
     */
    public function setFraicheur($fraicheur)
    {
        $this->fraicheur = $fraicheur;

        return $this;
    }

    /**
     * Get fraicheur
     *
     * @return integer
     */
    public function getFraicheur()
    {
        return $this->fraicheur;
    }

    /**
     * Set evolution
     *
     * @param integer $evolution
     *
     * @return Product
     */
    public function setEvolution($evolution)
    {
        $this->evolution = $evolution;

        return $this;
    }

    /**
     * Get evolution
     *
     * @return integer
     */
    public function getEvolution()
    {
        return $this->evolution;
    }

    /**
     * Set style
     *
     * @param integer $style
     *
     * @return Product
     */
    public function setStyle($style)
    {
        $this->style = $style;

        return $this;
    }

    /**
     * Get style
     *
     * @return integer
     */
    public function getStyle()
    {
        return $this->style;
    }

    /**
     * Set characteristics1
     *
     * @param string $characteristics1
     *
     * @return Product
     */
    public function setCharacteristics1($characteristics1)
    {
        $this->characteristics1 = $characteristics1;

        return $this;
    }

    /**
     * Get characteristics1
     *
     * @return string
     */
    public function getCharacteristics1()
    {
        return $this->characteristics1;
    }

    /**
     * Set characteristicsDetails
     *
     * @param string $characteristicsDetails
     *
     * @return Product
     */
    public function setCharacteristicsDetails($characteristicsDetails)
    {
        $this->characteristicsDetails = $characteristicsDetails;

        return $this;
    }

    /**
     * Get characteristicsDetails
     *
     * @return string
     */
    public function getCharacteristicsDetails()
    {
        return $this->characteristicsDetails;
    }

    /**
     * Set characteristics2
     *
     * @param string $characteristics2
     *
     * @return Product
     */
    public function setCharacteristics2($characteristics2)
    {
        $this->characteristics2 = $characteristics2;

        return $this;
    }

    /**
     * Get characteristics2
     *
     * @return string
     */
    public function getCharacteristics2()
    {
        return $this->characteristics2;
    }


    /**
     * Set state
     *
     * @param integer $state
     *
     * @return Product
     */
    public function setState($state)
    {
        $this->state = $state;

        return $this;
    }

    /**
     * Get state
     *
     * @return integer
     */
    public function getState()
    {
        return $this->state;
    }

    /**
     * Set appelation
     *
     * @param string $appelation
     *
     * @return Product
     */
    public function setAppelation($appelation)
    {
        $this->appelation = $appelation;

        return $this;
    }

    /**
     * Get appelation
     *
     * @return string
     */
    public function getAppelation()
    {
        return $this->appelation;
    }

    /**
     * Set description
     *
     * @param string $description
     *
     * @return Product
     */
    public function setDescription($description)
    {
        $this->description = $description;

        return $this;
    }

    /**
     * Get description
     *
     * @return string
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * Set slug
     *
     * @param string $slug
     *
     * @return Product
     */
    public function setSlug($slug)
    {
        $this->slug = $slug;

        return $this;
    }

    /**
     * Get slug
     *
     * @return string
     */
    public function getSlug()
    {
        return $this->slug;
    }

    /**
     * Set vintage
     *
     * @param string $vintage
     *
     * @return Product
     */
    public function setVintage($vintage)
    {
        $this->vintage = $vintage;

        return $this;
    }

    /**
     * Get vintage
     *
     * @return string
     */
    public function getVintage()
    {
        return $this->vintage;
    }

    /**
     * Set isNew
     *
     * @param integer $isNew
     *
     * @return Product
     */
    public function setIsNew($isNew)
    {
        $this->isNew = $isNew;

        return $this;
    }

    /**
     * Get isNew
     *
     * @return integer
     */
    public function getIsNew()
    {
        return $this->isNew;
    }

    /**
     * Set brand
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductBrand $brand
     *
     * @return Product
     */
    public function setBrand(\BDM\Nicolas\BackendBundle\Entity\ProductBrand $brand = null)
    {
        $this->brand = $brand;

        return $this;
    }

    /**
     * Get brand
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\ProductBrand
     */
    public function getBrand()
    {
        return $this->brand;
    }

    /**
     * Set region
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\Region $region
     *
     * @return Product
     */
    public function setRegion(\BDM\Nicolas\BackendBundle\Entity\Region $region = null)
    {
        $this->region = $region;

        return $this;
    }

    /**
     * Get region
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\Region
     */
    public function getRegion()
    {
        return $this->region;
    }

    /**
     * Set subCategory
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductSubCategory $subCategory
     *
     * @return Product
     */
    public function setSubCategory(\BDM\Nicolas\BackendBundle\Entity\ProductSubCategory $subCategory = null)
    {
        $this->sub_category = $subCategory;

        return $this;
    }

    /**
     * Get subCategory
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\ProductSubCategory
     */
    public function getSubCategory()
    {
        return $this->sub_category;
    }

    /**
     * Set color
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductColor $color
     *
     * @return Product
     */
    public function setColor(\BDM\Nicolas\BackendBundle\Entity\ProductColor $color = null)
    {
        $this->color = $color;

        return $this;
    }

    /**
     * Get color
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\ProductColor
     */
    public function getColor()
    {
        return $this->color;
    }

    /**
     * Set taste
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductTaste $taste
     *
     * @return Product
     */
    public function setTaste(\BDM\Nicolas\BackendBundle\Entity\ProductTaste $taste = null)
    {
        $this->taste = $taste;

        return $this;
    }

    /**
     * Get taste
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\ProductTaste
     */
    public function getTaste()
    {
        return $this->taste;
    }

    /**
     * Add image
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductImage $image
     *
     * @return Product
     */
    public function addImage(\BDM\Nicolas\BackendBundle\Entity\ProductImage $image)
    {
        $this->images[] = $image;

        return $this;
    }

    /**
     * Remove image
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductImage $image
     */
    public function removeImage(\BDM\Nicolas\BackendBundle\Entity\ProductImage $image)
    {
        $this->images->removeElement($image);
    }

    /**
     * Get images
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getImages()
    {
        return $this->images;
    }

    /**
     * Add alliance
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductAlliance $alliance
     *
     * @return Product
     */
    public function addAlliance(\BDM\Nicolas\BackendBundle\Entity\ProductAlliance $alliance)
    {
        $this->alliances[] = $alliance;

        return $this;
    }

    /**
     * Remove alliance
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\ProductAlliance $alliance
     */
    public function removeAlliance(\BDM\Nicolas\BackendBundle\Entity\ProductAlliance $alliance)
    {
        $this->alliances->removeElement($alliance);
    }

    /**
     * Get alliances
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getAlliances()
    {
        return $this->alliances;
    }

    /**
     * Get articles
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getArticles()
    {
        return $this->articles;
    }

    /**
     * Set cepage
     *
     * @param string $cepage
     *
     * @return Product
     */
    public function setCepage($cepage)
    {
        $this->cepage = $cepage;

        return $this;
    }

    /**
     * Get cepage
     *
     * @return string
     */
    public function getCepage()
    {
        return $this->cepage;
    }

    /**
     * Add article
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\Article $article
     *
     * @return Product
     */
    public function addArticle(\BDM\Nicolas\BackendBundle\Entity\Article $article)
    {
        $this->articles[] = $article;

        return $this;
    }

    /**
     * Remove article
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\Article $article
     */
    public function removeArticle(\BDM\Nicolas\BackendBundle\Entity\Article $article)
    {
        $this->articles->removeElement($article);
    }

    /**
     * Set country
     *
     * @param \BDM\Nicolas\BackendBundle\Entity\Country $country
     *
     * @return Product
     */
    public function setCountry(\BDM\Nicolas\BackendBundle\Entity\Country $country = null)
    {
        $this->country = $country;

        return $this;
    }

    /**
     * Get country
     *
     * @return \BDM\Nicolas\BackendBundle\Entity\Country
     */
    public function getCountry()
    {
        return $this->country;
    }

    /**
     * Set ref
     *
     * @param string $ref
     *
     * @return Product
     */
    public function setRef($ref)
    {
        $this->ref = $ref;

        return $this;
    }

    /**
     * Get ref
     *
     * @return string
     */
    public function getRef()
    {
        return $this->ref;
    }

    /**
     * Set seen
     *
     * @param integer $seen
     *
     * @return Product
     */
    public function setSeen($seen)
    {
        $this->seen = $seen;

        return $this;
    }

    /**
     * Get seen
     *
     * @return integer
     */
    public function getSeen()
    {
        return $this->seen;
    }
}
