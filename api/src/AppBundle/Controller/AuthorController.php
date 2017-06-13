<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\Annotations as Rest;
use AppBundle\Entity\Author;

class AuthorController extends Controller
{
    /**
     * @Rest\View(serializerGroups={"author"})
     * @Get("/authors")
     */
    public function getAuthorsAction(Request $request)
    {
        $authors = $this->get('doctrine.orm.entity_manager')
            ->getRepository('AppBundle:Author')
            ->findAll();

        return $authors;
    }

    /**
     * @Rest\View(serializerGroups={"author"})
     * @Get("/authors/{slug}")
     */
    public function getAuthorAction(Request $request, $slug)
    {
        $author = $this->get('doctrine.orm.entity_manager')
            ->getRepository('AppBundle:Author')
            ->findBySlug($slug);

        if (empty($author)) {
            return new JsonResponse(['message' => 'Author not found'], Response::HTTP_NOT_FOUND);
        }

        return $author;
    }
}
