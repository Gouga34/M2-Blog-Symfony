<?php

namespace BlogBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class BlogController extends Controller
{
    private function getPost($postId)
    {
        $em = $this->getDoctrine()->getManager();
        $post = $em->getRepository('BlogBundle:Post')->find($postId);
        return $post;
    }

    /**
     * @Route("/", name="blogpratik_homepage")
     */
    public function indexAction()
    {
        return $this->render('BlogBundle:Blog:index.html.twig');
    }

    /**
     * @Route("/post/{postId}", name="blogpratik_postpage")
     */
    public function postView($postId)
    {
        return $this->render('BlogBundle:Blog:post.html.twig',
                                            array('post' => $this->getPost($postId)));
    }
}
