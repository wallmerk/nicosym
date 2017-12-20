<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Widget;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Helper\Url;


class WidgetController extends Controller
{

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'widgets'));
        $this->addData(array('page_title' => 'Widgets'));
    }



    /**
     * @Route("/content/home/widget", name="_backend_content_home_widget")
     */
    public function indexAction()
    {
        $this->init();
        $widgets = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Widget')->findAll();


        $this->addData(array('widgets' => $widgets));
        return $this->render('BDMNicolasBackendBundle:Content/Home/Widget:management.html.twig', $this->getData());
    }


    /**
     * @Route("/content/home/widget/add", name="_backend_content_home_widget_add")
     */
    public function addAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $picture = $this->request->files->get('picture');
            $icon = $this->request->files->get('icon');
            $subTitle = $this->request->get('subTitle');
            $text = $this->request->get('text');
            $link = $this->request->get('link');
            $notice = $this->request->get('notice');
            $order = $this->request->get('order');


//            if (empty($title) || $title == '')
//                $this->addError('Le champs titre est obligatoire');
//
//            if (empty($preview) || $preview == '')
//                $this->addError('Le champs image est obligatoire');
//
//
//            if (empty($content) || $content== '')
//                $this->addError('Le champs contenu est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Content/Home/Widget:add.html.twig', $this->getData());
            }




            $widget = new Widget();
            $widget->setTitle($title);
            $widget->setSubTitle($subTitle);
            $widget->setOrder($order);
            $widget->setText($text);
//            $widget->setOrder(2);
            $widget->setLink($link);
            $widget->setNotice($notice);

            if ($picture){
                $_widget = Upload::save($this->rootPath . '/web/uploads/backend/content/home/widget/picture/', $picture);
                $widget->setPicture($_widget);
            }

            $_icon = Upload::save($this->rootPath . '/web/uploads/backend/content/home/widget/icon/', $icon);


            $widget->setIcon($_icon);
            $em->persist($widget);
            $em->flush();


            $this->addSuccess("Widget a été ajouté avec succès");
            return $this->redirect($this->generateUrl('_backend_content_home_widget'));
        }
        return $this->render('BDMNicolasBackendBundle:Content/Home/Widget:add.html.twig', $this->getData());
    }

    /**
     * @Route("/content/home/widget/edit/{id}", name="_backend_content_home_widget_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $widget = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Widget')->findOneById($id);
        $this->addData(array('widget' => $widget));
        $em = $this->getDoctrine()->getManager();
        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $picture = $this->request->files->get('picture');
            $icon = $this->request->files->get('icon');
            $subTitle = $this->request->get('subTitle');
            $text = $this->request->get('text');
            $link = $this->request->get('link');
            $notice = $this->request->get('notice');



            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Content/Home/Widget:edit.html.twig', $this->getData());
            }

            $widget->setTitle($title);
            $widget->setSubTitle($subTitle);
            $widget->setText($text);
            $widget->setLink($link);
            $widget->setNotice($notice);

            if ($picture) {
                Upload::delete($this->rootPath . '/web/uploads/backend/content/home/widget/picture/', $widget->getPicture());
                $_picture = Upload::save($this->rootPath . '/web/uploads/backend/content/home/widget/picture/', $picture);
                $widget->setPicture($_picture);
            }

            if ($icon) {
                Upload::delete($this->rootPath . '/web/uploads/backend/content/home/widget/icon/', $widget->getIcon());
                $_icon = Upload::save($this->rootPath . '/web/uploads/backend/content/home/widget/icon/', $icon);
                $widget->setIcon($_icon);
            }


            $em->flush();

            $this->addSuccess("L'article a été modifié avec succès");

            return $this->redirect($this->generateUrl('_backend_content_home_widget'));
        }

        return $this->render('BDMNicolasBackendBundle:Content/Home/Widget:edit.html.twig', $this->getData());
    }


    /**
     * @Route("/content/home/widget/delete/{id}", name="_backend_content_home_widget_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $this->addData(array('page_title' => 'articles'));

        $widget = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Widget')->findOneById($id);


        Upload::delete($this->rootPath . '/web/uploads/backend/content/home/picture/', $widget->getPicture());
        Upload::delete($this->rootPath . '/web/uploads/backend/content/home/icon/', $widget->getIcon());

        $em = $this->getDoctrine()->getManager();
        $em->remove($widget);
        $em->flush();
        $this->addSuccess("L'article a été supprimé avec succès");
        return $this->redirect($this->generateUrl('_backend_content_home_widget'));
    }

}
