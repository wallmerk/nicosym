<?php 



namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Page;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;



/**
* 
*/
class PageController extends Controller
{
	
	public function init()
	{
		parent::init();
        $this->addData(array('active_menu' => 'pages'));
        $this->addData(array('page_title' => 'gestion des pages'));
	} 

	 /**
     * @Route("/pages", name="_backend_pages")
     */
    public function indexAction()
    {
        $this->init();
         $pages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Page')->findAll();

         $this->addData(array('pages' => $pages));
        return $this->render('BDMNicolasBackendBundle:Pages:management.html.twig', $this->getData());
    }


    /**
     * @Route("/pages/add", name="_backend_page_add")
     */
    public function addAction()
    {
        $this->init();



        if ($this->request->isMethod('POST')) 
        {
        	$em = $this->getDoctrine()->getManager();

        	$title = $this->request->get('title');
        	$content = $this->request->get('content');
            $name = $this->request->get('name');
            $display = $this->request->get('display');
            

        	$page = new Page();
        	$page->setTitle($title);
            $page->setContent($content);
            $page->setDisplay($display);
            $page->setName($name);


        	$em->persist($page);
        	$em->flush();
        	$this->addSuccess('page a été ajoutée avec succes');
        	return $this->redirect($this->generateUrl('_backend_pages'));

        }

        return $this->render('BDMNicolasBackendBundle:Pages:add.html.twig', $this->getData());
    }

    /**
     * @Route("/pages/edit/{id}", name="_backend_page_edit")
     */
    public function editAction($id)
    {
       $this->init();

        $page = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Page')->findOneById($id);
        $this->addData(array('page'=>$page));


         if ($this->request->isMethod('POST')) 
        {
        	$em = $this->getDoctrine()->getManager();

        	$title = $this->request->get('title');
            $content = $this->request->get('content');
            $name = $this->request->get('name');
            $display = boolval($this->request->get('display'));
        

        	$page->setTitle($title);
            $page->setContent($content);
            $page->setDisplay($display);
            $page->setName($name);

            $em->persist($page);
        	$em->flush();
        	$this->addSuccess('Page a ete modifie avec succes');
        	return $this->redirect($this->generateUrl('_backend_pages'));	
        }

        return $this->render('BDMNicolasBackendBundle:Pages:edit.html.twig', $this->getData());

    }

    // /**
    //  * @Route("/stores/delete/{id}", name="_backend_service_delete")
    //  */
    // public function deleteAction($id)
    // {
    //     $this->init();
    //     $em = $this->getDoctrine()->getManager();
    //     $service = $this->getdoctrine()->getRepository('BDMNicolasBackendBundle:Service')->findOneById($id);
    //     Upload::delete($this->rootPath . '/web/uploads/backend/services/', $service->getImage());

    //     $em->remove($service);
    //     $em->flush();
    //     return $this->redirect($this->generateUrl('_backend_services'));


    // }

}