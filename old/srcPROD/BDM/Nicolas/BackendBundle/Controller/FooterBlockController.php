<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\FooterBlock;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class FooterBlockController extends Controller
{


    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'footer_block'));
        $this->addData(array('page_title' => 'Catégorie Articles'));
    }

    /**
     * @Route("/content/footer-block", name="_backend_content_footer_block")
     */
    public function indexAction()
    {
        $this->init();

        $repository = $this->getDoctrine()
            ->getRepository('BDMNicolasBackendBundle:FooterBlock');

        $blocks = $repository->findAll();

        $this->addData(array('page_title' => 'Blocks footer'));
        $this->addData(array('blocks' => $blocks));

        return $this->render('BDMNicolasBackendBundle:Content/FooterBlock:management.html.twig', $this->getData());
    }


    /**
     * @Route("/content/footer-block/add", name="_backend_content_footer_block_add")
     */
    public function addAction()
    {
        $this->init();
        $this->addData(array('page_title' => 'Catécorie Articles'));

        if ($this->request->isMethod('POST')) {
            $title = $this->request->get('title');
            $text = $this->request->get('text');
            $icon = $this->request->files->get('icon');

            if (empty($title) || $title == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($text) || $text == null) {
                $this->addError('Le champs description est obligatoire');
            }

            if (empty($icon) || $icon == null) {
                $this->addError('Le icone image est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Content/FooterBlock:add.html.twig', $this->getData());
            }

            $_icon = Upload::save($this->rootPath . '/web/uploads/backend/content/footer/', $icon);


            $block = new FooterBlock();
            $block->setTitle($title);
            $block->setText($text);
            $block->setIcon($_icon);
            $em = $this->getDoctrine()->getManager();
            $em->persist($block);
            $em->flush();

            $this->addSuccess('Block ajoutee avec succes');

            return $this->redirect($this->generateUrl('_backend_content_footer_block'));
        }

        return $this->render('BDMNicolasBackendBundle:Content/FooterBlock:add.html.twig', $this->getData());
    }


    /**
     * @Route("/content/footer-block/edit/{id}", name="_backend_content_footer_block_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $block = $em->getRepository('BDMNicolasBackendBundle:FooterBlock')->findOneById($id);

        $this->addData(array('page_title' => 'Blocks',
            'block' => $block));

        if ($this->request->isMethod('POST')) {

            $title = $this->request->get('title');
            $text = $this->request->get('text');
            $icon = $this->request->files->get('icon');

            if (empty($title) || $title == null) {
                $this->addError('Le champs titre est obligatoire');
            }
            if (empty($text) || $text == null) {
                $this->addError('Le champs description est obligatoire');
            }

            if (empty($icon) || $icon == null) {
                $this->addError('Le icone image est obligatoire');
            }

            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Content/FooterBlock:add.html.twig', $this->getData());
            }

            if ($icon) {
                Upload::delete($this->rootPath . '/web/uploads/backend/content/footer/', $block->getIcon());
                $_icon = Upload::save($this->rootPath . '/web/uploads/backend/content/footer/', $icon);
                $block->setIcon($_icon);
            }

            $block->setTitle($title);
            $block->setText($text);


            $em->flush();
            $this->addSuccesses(array('Block mis-a-jour avec succès.'));
            return $this->redirect($this->generateUrl('_backend_content_footer_block'));
        }

        return $this->render('BDMNicolasBackendBundle:Content/FooterBlock:edit.html.twig', $this->getData());
    }
    /**
     * @Route("/content/footer-block/delete/{id}", name="_backend_content_footer_block_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $this->addData(array('page_title' => 'articles'));

        $block = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:FooterBlock')->findOneById($id);


        Upload::delete($this->rootPath . '/web/uploads/backend/content/footer-block/', $block->getIcon());
        $em = $this->getDoctrine()->getManager();
        $em->remove($block);
        $em->flush();
        $this->addSuccess("Block a été supprimé avec succès");
        return $this->redirect($this->generateUrl('_backend_content_footer_block'));
    }

}
