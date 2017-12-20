<?php 



namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Service;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;



/**
* 
*/
class ServiceController extends Controller
{
	
	public function init()
	{
		parent::init();
        $this->addData(array('active_menu' => 'services'));
        $this->addData(array('page_title' => 'services'));
	} 

	 /**
     * @Route("/services", name="_backend_services")
     */
    public function indexAction()
    {
        $this->init();
        $services = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Service')->findAll();

        $this->addData(array('services' => $services));
        return $this->render('BDMNicolasBackendBundle:Services:management.html.twig', $this->getData());
    }


    /**
     * @Route("/services/add", name="_backend_service_add")
     */
    public function addAction()
    {
        $this->init();



        if ($this->request->isMethod('POST')) 
        {
        	$em = $this->getDoctrine()->getManager();

        	$title = $this->request->get('title');
        	$content = $this->request->get('content');
        	$position = $this->request->get('position');
        	$backgroundColor = $this->request->get('backgroundColor');
        	$image = $this->request->files->get('image');

        	$_image = Upload::save($this->rootPath . '/web/uploads/backend/services/', $image);


        	$service = new Service();
        	$service->setTitle($title);
        	$service->setContent($content);
        	$service->setPosition($position);
        	$service->setBackgroundColor($backgroundColor);
        	$service->setImage($_image);

        	$em->persist($service);
        	$em->flush();
        	$this->addSuccess('Service ajoutée avec succes');
        	return $this->redirect($this->generateUrl('_backend_services'));

        }

        return $this->render('BDMNicolasBackendBundle:Services:add.html.twig', $this->getData());
    }

    /**
     * @Route("/services/edit/{id}", name="_backend_service_edit")
     */
    public function editAction($id)
    {
       $this->init();

        $service = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Service')->findOneById($id);
        $this->addData(array('service'=>$service));


        if ($this->request->isMethod('POST')) 
        {
        	$em = $this->getDoctrine()->getManager();

        	$title = $this->request->get('title');
        	$content = $this->request->get('content');
        	$position = $this->request->get('position');
        	$backgroundColor = $this->request->get('backgroundColor');
        	$image = $this->request->files->get('image');

        	if ($image) {
                Upload::delete($this->rootPath . '/web/uploads/backend/services/', $service->getImage());
                $_image = Upload::save($this->rootPath . '/web/uploads/backend/services', $image);
                $service->setIamge($_image);
            }

        	$service->setTitle($title);
        	$service->setContent($content);
        	$service->setPosition($position);
        	$service->setBackgroundColor($backgroundColor);

        	$em->flush();
        	$this->addSuccess('Service a ete modifie avec succes');
        	return $this->redirect($this->generateUrl('_backend_services'));	
        }

        return $this->render('BDMNicolasBackendBundle:Services:edit.html.twig', $this->getData());

    }

    /**
     * @Route("/services/delete/{id}", name="_backend_service_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();
        $service = $this->getdoctrine()->getRepository('BDMNicolasBackendBundle:Service')->findOneById($id);
        Upload::delete($this->rootPath . '/web/uploads/backend/services/', $service->getImage());

        $em->remove($service);
        $em->flush();
        return $this->redirect($this->generateUrl('_backend_services'));


    }

}