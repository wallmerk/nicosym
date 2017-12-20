<?php


namespace BDM\Nicolas\BackendBundle\Controller;

use SymfonyCoreBundle\Controller\Secure\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class DashboardController extends Controller
{
    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'dashboard'));
        $this->addData(array('page_title' => 'Dashboard'));
    }

    /**
     * @Route("/dashboard", name="_backend_dashboard")
     */
    public function indexAction()
    {
        $this->init();

        $products = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Product')->findAll();
        $this->addData(array('product_count' => count($products)));
        return $this->render('BDMNicolasBackendBundle:Dashboard:index.html.twig', $this->getData());
    }
}