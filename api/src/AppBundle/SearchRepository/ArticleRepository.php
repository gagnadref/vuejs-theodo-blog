<?php

namespace AppBundle\SearchRepository;

use FOS\ElasticaBundle\Repository;

class ArticleRepository extends Repository
{
    public function search($q, $page, $perPage)
    {
        $matchQuery = new \Elastica\Query\Match();
        $matchQuery->setFieldQuery('title', $q);
        $matchQuery->setFieldFuzziness('title', 0.7);
        $matchQuery->setFieldMinimumShouldMatch('title', '80%');

        $query = new \Elastica\Query();
        $query->setQuery($matchQuery);
        $query->setSize($perPage);
        $query->setFrom(($page - 1) * $perPage);

        return $this->find($query);
    }
}
