<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Contact;
use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Symfony\Component\HttpFoundation\Request;

class ContactController extends Controller
{


    public function init()
    {
        parent::init();

    }

    /**
     * @Route("/contactez-nous.html", name="_contact")
     */
    public function indexAction()
    {
        $this->init();

        if($this->request->isMethod("POST"))
        {
            $company = $this->request->get("company");
            $firstName = $this->request->get("firstName");
            $lastName = $this->request->get("lastName");
            $email = $this->request->get("email");
            $phone = $this->request->get("phone");
            $subject = $this->request->get("subject");
            $message = $this->request->get("message");
            $isRead = false;
            $date = new \DateTime("now");

            $em = $this->getDoctrine()->getManager();

            $contact = new Contact();
            $contact->setCompany($company); 
            $contact->setFirstName($firstName); 
            $contact->setLastName($lastName); 
            $contact->setEmail($email); 
            $contact->setFixe($phone); 
            $contact->setSubject($subject); 
            $contact->setDate($date); 
            $contact->setMessage($message); 
            $contact->setIsRead($isRead); 

            $em->persist($contact);
            $em->flush();


            $this->addData(array('contact_alert'=>'Votre message a été envoyé avec succès'));
           // $contact_data = array('firstName' => $firstName, 'message'=>$message, 'subject'=>$subject, 'date'=> $date);

           // $this->addData(array('contact_data'=>$contact_data, 'alert'=>'test'));
        }

        $this->addData(array('page_title'=>'Contactez-nous'));
        return $this->render('BDMNicolasFrontendBundle:Contact:index.html.twig',$this->getData());
    }


    /**
     * @Route("/trouvez-nous.html", name="_find_us")
     */
    public function findUsAction()
    {
        $this->init();
        $this->addData(array('page_title'=>'Trouvez-nous'));
        return $this->render('BDMNicolasFrontendBundle:Contact:find-us.html.twig',$this->getData());
    }
}
