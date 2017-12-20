<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Article;
use BDM\Nicolas\BackendBundle\Entity\ArticleIcon;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;


class ArticleIconController extends Controller
{


    /**
     * @Route("/articles-icons", name="_backend_articles_icons")
     */
    public function indexAction()
    {
        $this->init();
        $articles = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleIcon')->findAll();

        $this->addData(array('articles' => $articles));
        /*$this->addData(array('categories' => $categories));*/
        return $this->render('BDMNicolasBackendBundle:Article/Icon:management.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'article_icon'));
        $this->addData(array('page_title' => 'Articles'));
    }

    /**
     * @Route("/articles-icons/add", name="_backend_articles_icons_add")
     */
    public function addAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $link = $this->request->get('link');
            $icon = $this->request->files->get('icon');

            if (empty($title) || $title == '')
                $this->addError('Le champs titre est obligatoire');



            if (empty($link) || $link == '')
                $this->addError('Le champs lien est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Article/Icon:add.html.twig', $this->getData());
            }

            $_icon = Upload::save($this->rootPath . '/web/uploads/backend/article/icon/', $icon);

            $article = new ArticleIcon();
            $article->setLabel($title);
            $article->setImg($_icon);
            $article->setSlug(Url::slugify($title));
            $article->setUrl($link);

            $em->persist($article);
            $em->flush();


            $this->addSuccess("L'article a été ajouté avec succès");
            return $this->redirect($this->generateUrl('_backend_articles_icons'));
        }
        return $this->render('BDMNicolasBackendBundle:Article/Icon:add.html.twig', $this->getData());
    }

    /**
     * @Route("/articles-icons/edit/{id}", name="_backend_articles_icons_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $article = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:ArticleIcon')->findOneById($id);
        $this->addData(array('article' => $article));
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $link = $this->request->get('link');
            $icon = $this->request->files->get('icon');

            if (empty($title) || $title == '')
                $this->addError('Le champs titre est obligatoire');

            if (empty($link) || $link == '')
                $this->addError('Le champs lien est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Article/Icon:edit.html.twig', $this->getData());
            }


            $article->setLabel($title);
            $article->setSlug(Url::slugify($title));
            $article->setUrl($link);

            if (!empty($icon)) {
                $_icon = Upload::save($this->rootPath . '/web/uploads/backend/article/icon/', $icon);
                $article->setImg($_icon);
            }

            $em->flush();

            $this->addSuccess("L'article a été modifié avec succès");

            return $this->redirect($this->generateUrl('_backend_articles_icons'));
        }

        return $this->render('BDMNicolasBackendBundle:Article/Icon:edit.html.twig', $this->getData());
    }


    /**
     * @Route("/articles-icons/{id}", name="_backend_articles_icons_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $this->addData(array('page_title' => 'articles'));

        $article = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Article')->findOneById($id);

        Upload::delete($this->rootPath . '/web/uploads/backend/article/icon/', $article->getImg());


        $em = $this->getDoctrine()->getManager();
        $em->remove($article);
        $em->flush();
        $this->addSuccess("L'article a été supprimé avec succès");
        return $this->redirect($this->generateUrl('_backend_articles_icons'));
    }
}
