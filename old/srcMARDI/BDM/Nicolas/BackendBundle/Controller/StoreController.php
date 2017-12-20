<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use BDM\Nicolas\BackendBundle\Entity\Store;
use SymfonyCoreBundle\Controller\Secure\Controller;
use SymfonyCoreBundle\Helper\Upload;
use SymfonyCoreBundle\Helper\Url;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;


class StoreController extends Controller
{


    /**
     * @Route("/stores", name="_backend_stores")
     */
    public function indexAction()
    {
        $this->init();
        $stores = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findAll();

        $this->addData(array('stores' => $stores));
        return $this->render('BDMNicolasBackendBundle:Store:management.html.twig', $this->getData());
    }

    public function init()
    {
        parent::init();
        $this->addData(array('active_menu' => 'stores'));
        $this->addData(array('page_title' => 'Magasins'));
    }

    /**
     * @Route("/stores/add", name="_backend_stores_add")
     */
    public function addAction()
    {
        $this->init();
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $name = $this->request->get('name');
            $address = $this->request->get('address');
            $ciry = $this->request->get('city');
            $longitude = $this->request->get('longitude');
            $latitude = $this->request->get('latitude');
            $phone = $this->request->get('phone');
            $description = $this->request->get('description');
            $image = $this->request->files->get('image');

            $_image = Upload::save($this->rootPath . '/web/uploads/backend/store/', $image);



            if (empty($name) || $name == '')
                $this->addError('Le champs nom est obligatoire');

            if (empty($address) || $address == '')
                $this->addError('Le champs addresse est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Store:add.html.twig', $this->getData());
            }

            $store = new Store();
            $store->setName($name);
            $store->setAddress($address);
            $store->setCity($ciry);
            $store->setLongitude($longitude);
            $store->setLatitude($latitude);
            $store->setPhone($phone);
            $store->setImage($_image);
            $store->setDescription($description);

            $em->persist($store);
            $em->flush();


            $this->addSuccess("Le magasin a été ajouté avec succès");
            return $this->redirect($this->generateUrl('_backend_stores'));
        }
        return $this->render('BDMNicolasBackendBundle:Store:add.html.twig', $this->getData());
    }

    /**
     * @Route("/stores/edit/{id}", name="_backend_stores_edit")
     */
    public function editAction($id)
    {
        $this->init();
        $store = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findOneById($id);
        $this->addData(array('store' => $store));
        $em = $this->getDoctrine()->getManager();

        if ($this->request->isMethod('POST')) {
            $name = $this->request->get('name');
            $address = $this->request->get('address');
            $city = $this->request->get('city');
            $longitude = $this->request->get('longitude');
            $latitude = $this->request->get('latitude');
            $phone = $this->request->get('phone');
            $description = $this->request->get('description');
            $image = $this->request->files->get('image');


            if (empty($name) || $name == '')
                $this->addError('Le champs nom est obligatoire');

            if (empty($latitude) || $latitude == '')
                $this->addError('Le champs latitude est obligatoire');


            if (empty($address) || $address == '')
                $this->addError('Le champs addresse est obligatoire');


            if ($this->hasErrors()) {
                return $this->render('BDMNicolasBackendBundle:Store:edit.html.twig', $this->getData());
            }

            if ($image) {
                Upload::delete($this->rootPath . '/web/uploads/backend/store/', $store->getImage());
                $_image = Upload::save($this->rootPath . '/web/uploads/backend/store/', $image);
                $store->setImage($_image);
            }


            $store->setName($name);
            $store->setAddress($address);
            $store->setCity($city);
            $store->setDescription($description);

            $store->setLongitude($longitude);
            $store->setLatitude($latitude);
            $store->setPhone($phone);

            $em->flush();

            $this->addSuccess("Le magasin a été modifié avec succès");

            return $this->redirect($this->generateUrl('_backend_stores'));
        }

        return $this->render('BDMNicolasBackendBundle:Store:edit.html.twig', $this->getData());
    }


    /**
     * @Route("/stores/delete/{id}", name="_backend_stores_delete")
     */
    public function deleteAction($id)
    {
        $this->init();
        $this->addData(array('page_title' => 'Magasins'));

        $store = $this->getDoctrine()->getRepository('BDMNicolasBackendBundle:Store')->findOneById($id);
        $em = $this->getDoctrine()->getManager();
        $em->remove($store);
        $em->flush();
        $this->addSuccess("Le magasin a été supprimé avec succès");
        return $this->redirect($this->generateUrl('_backend_stores'));
    }


}
