<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\Annotations as Rest;
use AppBundle\Entity\Tag;

class TagController extends Controller
{
    /**
     * @Rest\View()
     * @Get("/tags")
     */
    public function getTagsAction(Request $request)
    {
        $tags = $this->get('doctrine.orm.entity_manager')
            ->getRepository('AppBundle:Tag')
            ->findAll();

        return $tags;
    }

    /**
     * @Rest\View()
     * @Get("/tags/{id}")
     */
    public function getTagAction(Request $request, $id)
    {
        $tag = $this->get('doctrine.orm.entity_manager')
            ->getRepository('AppBundle:Tag')
            ->find($id);

        if (empty($tag)) {
            return new JsonResponse(['message' => 'Tag not found'], Response::HTTP_NOT_FOUND);
        }

        return $tag;
    }
}
