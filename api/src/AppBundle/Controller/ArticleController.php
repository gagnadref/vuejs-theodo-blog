<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use FOS\RestBundle\Controller\Annotations\Get;
use FOS\RestBundle\Controller\Annotations as Rest;
use FOS\RestBundle\Controller\Annotations\QueryParam;
use FOS\RestBundle\Request\ParamFetcher;
use AppBundle\Entity\Article;

class ArticleController extends Controller
{
    /**
     * @Rest\View(serializerGroups={"article_summary"})
     * @Get("/articles")
     * @QueryParam(name="q", default="", description="keywords to search article")
     * @QueryParam(name="tag", default="", description="Tag's slug to filter article")
     * @QueryParam(name="author", default="", description="Author's slug to filter article")
     * @QueryParam(name="page", default="1", description="Page number")
     * @QueryParam(name="perPage", default="10", description="Number of articles per page")
     */
    public function getArticlesAction(Request $request, ParamFetcher $paramFetcher)
    {
        $query = $paramFetcher->get('q');
        $tag = $paramFetcher->get('tag');
        $author = $paramFetcher->get('author');
        $page = $paramFetcher->get('page');
        $perPage = $paramFetcher->get('perPage');

        if ('' === $query) {
            $articles = $this->get('doctrine.orm.entity_manager')
                ->getRepository('AppBundle:Article')
                ->findByTagAndAuthor($tag, $author, $page, $perPage);
        } else {
            $articles = $this->get('fos_elastica.manager')
                ->getRepository('AppBundle:Article')
                ->search($query, $page, $perPage);
        }

        return $articles;
    }

    /**
     * @Rest\View(serializerGroups={"article"})
     * @Get("/articles/{year}/{month}/{slug}")
     */
    public function getArticleAction(Request $request, $year, $month, $slug)
    {
        $article = $this->get('doctrine.orm.entity_manager')
            ->getRepository('AppBundle:Article')
            ->findOneBySlug($slug);

        if (empty($article)) {
            return new JsonResponse(['message' => 'Article not found'], Response::HTTP_NOT_FOUND);
        }

        return $article;
    }
}
