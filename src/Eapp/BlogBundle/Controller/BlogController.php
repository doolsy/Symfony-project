<?php

namespace Eapp\BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Eapp\BlogBundle\Form\PostType;
use Eapp\BlogBundle\Entity\Post;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

class BlogController extends Controller
{
  /**
 * @Security("has_role('ROLE_USER')")
 */
  public function indexAction()
  {
    // Pour récupérer la liste des 10 derniers articles
    $listArticles = $this->getDoctrine()
    ->getManager()
    ->getRepository('EappBlogBundle:Post')
    ->getArticles()
    ;

    // L'appel de la vue ne change pas
    return $this->render('EappBlogBundle:Blog:index.html.twig', array(
      'listArticles' => $listArticles
      ));
  }

  /**
 * @Security("has_role('ROLE_USER')")
 */
  public function postAction($id)
  {

    // Pour récupérer un article unique : on utilise find()
    $article = $this->getDoctrine()->getManager()->getRepository('EappBlogBundle:Post')->find($id);

    // On vérifie que l'annonce avec cet id existe bien
    if ($article === null) {
      throw $this->createNotFoundException("L'annonce d'id ".$id." n'existe pas.");
    }
    // Puis modifiez la ligne du render comme ceci, pour prendre en compte les variables :
    return $this->render('EappBlogBundle:Blog:post.html.twig', array(
      'article'           => $article
      ));
  }
  /**
 * @Security("has_role('ROLE_USER')")
 */
  public function newAction(Request $request)
  {
    $post = new Post();
    $form = $this->createForm(new PostType(), $post);

    if ($form->handleRequest($request)->isValid()) {
      $em = $this->getDoctrine()->getManager();
      $em->persist($post);
      $em->flush();

      $request->getSession()->getFlashBag()->add('success', 'Article bien enregistrée.');

      // On redirige vers la page de visualisation de l'annonce nouvellement créée
      return $this->redirect($this->generateUrl('myblogz_post', array('id' => $post->getId())));
    }    
    // Si on n'est pas en POST, alors on affiche le formulaire
    return $this->render('EappBlogBundle:Blog:add.html.twig',array('form' => $form->createView()));
  }
  /**
 * @Security("has_role('ROLE_USER')")
 */
  public function editAction($id,Request $request)
  {
    // On récupère l'entité correspondant à l'id $id
    $post = $this->getDoctrine()->getManager()->getRepository('EappBlogBundle:Post')->find($id);
    // Si l'article n'existe pas, on affiche une erreur 404
    if ($post == null) {
      throw $this->createNotFoundException("L'article d'id ".$id." n'existe pas.");
    }

    $form = $this->createForm(new PostType(), $post);
    $form->handleRequest($request);
    if ($form->isValid()) {
      // On enregistre notre objet $post dans la base de données
      $em = $this->getDoctrine()->getManager();
      $em->persist($post);
      $em->flush();

      $request->getSession()->getFlashBag()->add('success', 'Article bien modifié.');

      // On redirige vers la page de visualisation de l'annonce nouvellement créée
      return $this->redirect($this->generateUrl('myblogz_post', array('id' => $post->getId())));
    }    
    // Ici, on s'occupe de la création et de la gestion du formulaire
    return $this->render('EappBlogBundle:Blog:edit.html.twig', array(
     'form'         => $form->createView(),
     'post' => $post
     ));
  }
  /**
 * @Security("has_role('ROLE_USER')")
 */
  public function deleteAction($id, Request $request)
  {
    $em = $this->getDoctrine()->getManager();

    $post = $em->getRepository('EappBlogBundle:Post')->find($id);

    $form = $this->createFormBuilder()->getForm();

    $request = $this->getRequest();
    if ($request->getMethod() == 'POST') {
      $form->bind($request);

      if ($form->isValid()) { 
        // On supprime l'article
        $em = $this->getDoctrine()->getManager();
        $em->remove($post);
        $em->flush();
        // On définit un message flash
        $this->get('session')->getFlashBag()->add('info', 'Article bien supprimé');

        // Puis on redirige vers l'accueil
        return $this->redirect($this->generateUrl('myblogz_accueil'));
      }
    }

    // Si la requête est en GET, on affiche une page de confirmation avant de supprimer
    return $this->render('EappBlogBundle:Blog:delete.html.twig', array(
      'post' => $post,
      'form'    => $form->createView()
      ));
  }
}