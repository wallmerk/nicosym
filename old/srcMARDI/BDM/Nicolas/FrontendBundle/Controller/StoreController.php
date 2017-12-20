<?php

namespace BDM\Nicolas\FrontendBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use SymfonyCoreBundle\Controller\Secure\Controller;

class StoreController extends Controller
{

    public function init()
    {
        parent::init();

    }


    /**
     * @Route("/trouvez-nous.html", name="_find_us")
     */
    public function findUsAction()
    {
        $this->init();
        $this->addData(array('page_title' => 'Trouvez-nous'));

        if ($this->request->isMethod('POST')) {
            $search = $this->request->get('search');
            if (!empty($search) && $search != '') {
                $stores = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findByKey($search);
            } else {
                $stores = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findAll();
            }
            $this->addData(array('stores' => $stores, 'search' => $search ? $search : ''));
            return $this->render('BDMNicolasFrontendBundle:Store:search_store.html.twig', $this->getData());
        }
        return $this->render('BDMNicolasFrontendBundle:Store:find-us.html.twig', $this->getData());
    }


    /**
     * @Route("/magasins/{id}", name="_details_store")
     */
    public function storedetailsAction($id)
    {
        $this->init();
        $store = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findOneById($id);
        $this->addData(array('page_title'=>'fiche magasin', 'magasin'=>$store));

        return $this->render('BDMNicolasFrontendBundle:Store:store_details.html.twig', $this->getData());
    }


}
