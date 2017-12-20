<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\ArticleSlider;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ArticleSliderController extends Controller
{


    public function init()
    {
        parent::init();

        $this->addData(array('active_menu' => 'article_slider'));
    }

    /**
     * @Route("/content/article/slider", name="_backend_content_article_slider")
     */
    public function indexAction()
    {
        $this->init();
        $this->addData(array('page_title' => 'Article Slider'));

        $slides = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleSlider')->findAll();
        if (empty($slides))
            $this->addNotice('Pas de slides disponibles, pensez à ajouter quelques-uns');

        $this->addData(array('slides' => $slides));

        return $this->render('BDMNicolasBackendBundle:Content/Article/Slider:management.html.twig', $this->getData());
    }

    /**
     * @Route("/content/article/slider/add", name="_backend_content_article_slider_add")
     */
    public function addAction()
    {
        $this->init();
        $this->addData(array('page_title' => 'Article Slider'));
        $em = $this->getDoctrine()->getManager();

        if($this->request->isMethod('POST'))
        {
            $title = $this->request->get('title');
            $isPrivate = $this->request->get('isPrivate') == 'on' ? 1 : 0;
            $link = $this->request->get('link');
            $background = $this->request->files->get('background');

            if(empty($title) || $title == '')
                $this->addError('Le champs titre long est obligatoire');

            if(empty($background) || $background == '')
                $this->addError('Le champs arriere plan est obligatoire');

            if($this->hasErrors())
            {
                return $this->render('BDMNicolasBackendBundle:Content/Article/Slider:add.html.twig', $this->getData());
            }


            $_background = Upload::save($this->rootPath.'web/uploads/backend/content/article/slider/', $background);

            $slide = new ArticleSlider();
            $slide->setTitle($title);
            $slide->setLink($link);
            $slide->setIsPrivate($isPrivate ? $isPrivate : 0);
            $slide->setBackground($_background);

            $em->persist($slide);
            $em->flush();

            $this->addSuccess('Le slide a été ajouté avec succès');

            return $this->redirect($this->generateUrl('_backend_content_article_slider'));
        }

        return $this->render('BDMNicolasBackendBundle:Content/Article/Slider:add.html.twig', $this->getData());
    }

    /**
     * @Route("/content/article/slider/edit/{id}", name="_backend_content_article_slider_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        if($this->request->isMethod('POST'))
        {
            $slide = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleSlider')->findOneById($id);

            $title = $this->request->get('title');
            $isPrivate = $this->request->get('isPrivate') == 'on' ? 1 : 0;
            $background = $this->request->files->get('background');
            $link = $this->request->get('link');

            if(empty($title) || $title == '')
                $this->addError('Le champs titre long est obligatoire');

            if($this->hasErrors())
            {
                return $this->redirect($this->generateUrl('_backend_content_article_slider'));
            }

            $slide->setTitle($title);
            $slide->setLink($link);
            $slide->setIsPrivate($isPrivate ? $isPrivate : 0);

            if($background)
            {
                Upload::delete($this->rootPath.'/web/uploads/backend/content/article/slider/', $slide->getBackground());
                $_background = Upload::save($this->rootPath.'/web/uploads/backend/content/article/slider/', $background);
                $slide->setBackground($_background);
            }

            $em->flush();

            $this->addSuccess('Le slide a été modifié avec succès');
        }

        return $this->redirect($this->generateUrl('_backend_content_article_slider'));

    }


    /**
     * @Route("/content/article/slider/delete/{id}", name="_backend_content_article_slider_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        $slide = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleSlider')->findOneById($id);
        Upload::delete($this->rootPath.'/web/uploads/backend/content/article/slider/', $slide->getBackground());
        $em->remove($slide);
        $em->flush();

        return $this->redirect($this->generateUrl('_backend_content_article_slider'));

    }


}
