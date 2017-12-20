<?php

namespace BDM\Nicolas\BackendBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\HttpFoundation\Request;

class SecurityController extends Controller
{
    /**
     * @Route("/login", name="_backend_login")
     */
    public function loginAction()
    {
        $authenticationUtils = $this->get('security.authentication_utils');

        // get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $authenticationUtils->getLastUsername();

        return $this->render(
            'BDMNicolasBackendBundle:Security:auth.html.twig',
            array(
                // last username entered by the user
                'last_username' => $lastUsername,
                'error'         => $error,
            )
        );
    }

    /**
     * @Route("/login_check", name="_backend_login_check")
     */
    public function loginCheckAction()
    {

    }

    /**
     * @Route("/logout", name="_backend_logout")
     */
    public function logoutAction()
    {
        $this->get('request')->getSession()->invalidate();
        return $this->redirect($this->generateUrl('_backend_login'));
    }
}