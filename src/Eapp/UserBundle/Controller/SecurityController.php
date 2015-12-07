<?php

namespace Eapp\UserBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Security\Core\SecurityContext;
use FOS\UserBundle\Controller\SecurityController as BaseController;

class SecurityController extends BaseController
{

  protected function renderLogin(array $data)
  {
    // Sur la page du formulaire de connexion, on utilise la vue classique "login"
    // Cette vue hérite du layout et ne peut donc être utilisée qu'individuellement
    if ($this->container->get('request')->attributes->get('_route') == 'fos_user_security_login') {
      $view = 'login';
    }
    $template = sprintf('FOSUserBundle:Security:%s.html.twig', $view);

    return $this->container->get('templating')->renderResponse($template, $data);
  }


}
