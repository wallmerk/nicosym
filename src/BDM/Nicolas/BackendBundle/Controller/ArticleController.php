<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Article;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ArticleController extends Controller
{


    /**
     * @Route("/articles", name="_backend_articles")
     */
    public function indexAction()
    {
        $this->init();
        $articles = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findAll();

        $this->addData(array('articles' => $articles));
        /*$this->addData(array('categories' => $categories));*/
        return $this->render('BDMNicolasBackendBundle:Article/Article:management.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'article'));
        $this->addData(array('page_title' => 'Articles'));
    }

    /**
     * @Route("/articles/add", name="_backend_articles_add")
     */
    public function addAction()
    {
        $this->init();
        $date = date("d-m-Y");
        $this->addData(array('date' => $date));
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $link = $this->request->get('link');


            if (empty($title) || $title == '')
                $this->addError('Le champs titre est obligatoire');



            if (empty($link) || $link == '')
                $this->addError('Le champs lien est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Article/Article:add.html.twig', $this->getData());
            }

            $article = new Article();
            $article->setTitle($title);
            $article->setSlug(Url::slugify($title));
            //$article->setDate(strtotime($date));
            $article->setLink($link);

            $em->persist($article);
            $em->flush();


            $this->addSuccess("L'article a été ajouté avec succès");
            return $this->redirect($this->generateUrl('_backend_articles'));
        }
        return $this->render('BDMNicolasBackendBundle:Article/Article:add.html.twig', $this->getData());
    }

    /**
     * @Route("/articles/edit/{id}", name="_backend_articles_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $article = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findOneById($id);
        $this->addData(array('article' => $article));
        $date = date("d-m-Y");
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $link = $this->request->get('link');

            if (empty($title) || $title == '')
                $this->addError('Le champs titre est obligatoire');

            if (empty($link) || $link == '')
                $this->addError('Le champs lien est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Article/Article:edit.html.twig', $this->getData());
            }


            $article->setTitle($title);
            $article->setSlug(Url::slugify($title));
            $article->setDate(strtotime($date));
            $article->setLink($link);

            $em->flush();

            $this->addSuccess("L'article a été modifié avec succès");

            return $this->redirect($this->generateUrl('_backend_articles'));
        }

        return $this->render('BDMNicolasBackendBundle:Article/Article:edit.html.twig', $this->getData());
    }


    /**
     * @Route("/articles/{id}", name="_backend_articles_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $this->addData(array('page_title' => 'articles'));

        $article = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findOneById($id);

        $em = $this->getDoctrine()->getManager();
        $em->remove($article);
        $em->flush();
        $this->addSuccess("L'article a été supprimé avec succès");
        return $this->redirect($this->generateUrl('_backend_articles'));
    }
}
