<?php

namespace Eapp\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class DefaultController extends Controller
{
    public function indexAction($name)
    {
        return $this->render('EappBlogBundle:Default:index.html.twig', array('name' => $name));
    }
}
