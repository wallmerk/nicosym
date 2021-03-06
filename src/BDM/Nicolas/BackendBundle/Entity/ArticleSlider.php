<?php

namespace BDM\Nicolas\BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * ArticleSlider
 *
 * @ORM\Table(name="article_slider")
 * @ORM\Entity(repositoryClass="BDM\Nicolas\BackendBundle\Repository\ArticleSliderRepository")
 */
class ArticleSlider
{
    const PRIVACY_PUBLIC = 0;
    const PRIVACY_PRIVATE = 1;

    /**
     * @ORM\Column(type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    protected $id;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $background;

    /**
     * @ORM\Column(type="string", length=100)
     */
    protected $link;

    /**
     * @ORM\Column(type="string", length=250)
     */
    protected $title;

    /**
     * @ORM\Column(type="integer")
     */
    protected $isPrivate;



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
     * Set background
     *
     * @param string $background
     *
     * @return ArticleSlider
     */
    public function setBackground($background)
    {
        $this->background = $background;

        return $this;
    }

    /**
     * Get background
     *
     * @return string
     */
    public function getBackground()
    {
        return $this->background;
    }

    /**
     * Set link
     *
     * @param string $link
     *
     * @return ArticleSlider
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
     * Set title
     *
     * @param string $title
     *
     * @return ArticleSlider
     */
    public function setTitle($title)
    {
        $this->title = $title;

        return $this;
    }

    /**
     * Get title
     *
     * @return string
     */
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * Set isPrivate
     *
     * @param integer $isPrivate
     *
     * @return ArticleSlider
     */
    public function setIsPrivate($isPrivate)
    {
        $this->isPrivate = $isPrivate;

        return $this;
    }

    /**
     * Get isPrivate
     *
     * @return integer
     */
    public function getIsPrivate()
    {
        return $this->isPrivate;
    }
}
