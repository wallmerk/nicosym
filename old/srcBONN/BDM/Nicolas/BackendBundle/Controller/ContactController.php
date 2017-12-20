<?php 


namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Contact;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;


/**
* 
*/
class ContactController extends Controller
{
	
	public function init()
	{
		parent::init();
		$this->addData(array('active_menu' => 'Boite de reception'));
        $this->addData(array('page_title' => 'Boite de reception'));
	}



	/**
	 * @Route("/contact/{page}", name="_backend_contact", defaults={"page":1})
	 */
	public function indexAction($page)
	{
		$this->init();
		$messages = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Contact')->findAll();

		// PAGINATION 
		// -----------

		// nbr of messages to be displayed in one page. change this later in prod
		// (the current value (3) is set to test the pagination )
		$message_per_page   = 3;
		$total_messages 	= count($messages);

		$total_pages		= ceil($total_messages/$message_per_page  );
		$current_page 		= ($page>=$total_pages)? $total_pages : $page ;
		$first_message		= ($page-1) * $message_per_page  ;
		$last_message		= ($first_message + $message_per_page   <= $total_messages) ? $first_message + $message_per_page   : $total_messages ;
		$next_page 			= ($current_page >= $total_pages ) ? $total_pages : $current_page + 1 ;
		$prev_page 			= ($current_page <= 1 )? 1 : $current_page - 1 ;

		$messages 	= array_slice($messages, $first_message, $message_per_page  );
		$pagination = array(
					'total_messages'=> $total_messages,
					'first_message' => $first_message,
					'last_message'	=> $last_message,
					'current_page'  => $current_page,
					'total_pages'	=> $total_pages,
					'next_page' 	=> $next_page,
					'prev_page'		=> $prev_page, 
					);

		$this->addData(array('messages'=>$messages, 'pagination'=> $pagination));


		return $this->render('BDMNicolasBackendBundle:Contact:index.html.twig', $this->getData());
		// return $this->render('BDMNicolasBackendBundle:Dashboard:index.html.twig', $this->getData());

	}

	/**
	 * @Route("/contact/view/{id}", name="_backend_contact_view")
	 */
	public function viewAction($id)
	{
		$this->init();

		$em = $this->getDoctrine()->getManager();
		$contact = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Contact')->findOneById($id);
		$contact->setIsRead(true);
		$em->flush();
		$this->addData(array('contact'=>$contact));
		// return $this>render('BDMNicolasBackendBundle:Contact:view.html.twig');
		return $this->render('BDMNicolasBackendBundle:Contact:view.html.twig', $this->getData());

	}

}
