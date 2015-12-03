<?php

namespace BlogBundle\Entity;
use Doctrine\ORM\Tools\Pagination\Paginator;

/**
 * PostRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class PostRepository extends \Doctrine\ORM\EntityRepository
{
    public function countPublishedTotal() {
        return $this
            ->createQueryBuilder('m')
            ->select('COUNT(m)')    
            ->getQuery()
            ->getSingleScalarResult();
    }
    
          /**
     * Get the paginated list of published articles
     *
     * @param int $page
     * @param int $maxperpage
     * @param string $sortby
     * @return Paginator
     */
    public function getList($page=1, $maxperpage=10)
    {
        $q = $this->_em->createQueryBuilder()
            ->select('post')->from('BlogBundle:Post','post');
 
        $q->setFirstResult(($page-1) * $maxperpage)
            ->setMaxResults($maxperpage);
 
        return new Paginator($q);
    }
}
