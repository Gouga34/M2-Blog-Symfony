<?php

namespace BlogBundle\Controller;
use \BlogBundle\Entity\Post;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;

class BlogController extends Controller
{
    private function getPost($postId)
    {
        $em = $this->getDoctrine()->getManager();
        $post = $em->getRepository('BlogBundle:Post')->find($postId);
        return $post;
    }
    
    private function getPosts()
    {
        $em = $this->getDoctrine()->getManager();
        return $em->getRepository('BlogBundle:Post')->findAll();
    }

    /**
     * @Route("/", name="blogpratik_homepage")
     */
    public function indexAction()
    {
        
        return $this->render('BlogBundle:Blog:index.html.twig',
                                            array('posts' => $this->getPosts()));
    }
    
    /**
     * @Route("/loginBlogPratik", name="blogpratik_login")
     */
    public function loginAction() {
        return $this->render('BlogBundle:Blog:login.html.twig');
    }
    
    /**
     * @Route("/registerBlogPratik", name="blogpratik_register")
     */
    public function registerAction() {
        return $this->render('BlogBundle:Blog:register.html.twig');
    }
    /**
     * @Route("/post/{postId}", name="blogpratik_postpage")
     */
    public function postView($postId)
    {
        return $this->render('BlogBundle:Blog:post.html.twig',
                                            array('post' => $this->getPost($postId)));
    }

    /**
     * @Route("/postAdd", name="blogpratik_add")
     */
    public function addPostAction(Request $request)
    {
        $post = new Post();

        $formBuilder = $this->get('form.factory')->createBuilder('form', $post);
        $formBuilder->add('titre', 'text')
                    ->add('content', 'textarea')
                    ->add('Envoyer', 'submit');
        $form = $formBuilder->getForm();
   
        $form->handleRequest($request);
        
        $post->setUrlAlias("");
        $post->setPublished(new \DateTime());
        $post->setAuthor($this->getUser());
        
        if($form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->persist($post);
            $em->flush();
            
            $post->setUrlAlias("localhost:8000/post/" . $post->getId());
            $em->flush();
            
            $request->getSession()->getFlashBag()->add('notice', 'Post bien enregistré');
            
            return $this->redirect($this->generateUrl('blogpratik_postpage', array('postId' => $post->getId())));
        }
        
        return $this->render('BlogBundle:Blog:add.html.twig', array('form' => $form->createView() ));
    }
    
    /**
     * @Route("/postDelete/{id}", name="blogpratik_delete")
     */
    public function deletePostAction($id) {
        $em = $this->getDoctrine()->getManager();
        $post = $em->getRepository('BlogBundle:Post')->find($id);
        $em->remove($post);
        $em->flush();
        
        return $this->render('BlogBundle:Blog:index.html.twig', array('posts' => $this->getPosts()));
    }
    
    /**
     * @Route("/postUpdate/{id}", name="blogpratik_update")
     */
    public function updatePostAction($id, Request $request )
    {
        $em = $this->getDoctrine()->getManager();
        $post = $em->getRepository('BlogBundle:Post')->find($id);
        
        $formBuilder = $this->get('form.factory')->createBuilder('form', $post);
        $formBuilder->add('content', 'textarea')
                    ->add('url_alias', 'text')
                    ->add('Envoyer', 'submit');
        $form = $formBuilder->getForm();
        
        $form->handleRequest($request);
        
        if($form->isValid()){
            $em=$this->getDoctrine()->getManager();
            $em->flush();
            $request->getSession()->getFlashBag()->add('notice', 'Post bien mis à jour');
            
            return $this->redirect($this->generateUrl('blogpratik_postpage', array('postId' => $post->getId())));
        }
        
        return $this->render('BlogBundle:Blog:update.html.twig', array('form' => $form->createView() ));
    }
}
