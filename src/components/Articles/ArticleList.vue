<template>
  <div id="primary" class="content-area with-sidebar">
    <div id="content" class="site-content" role="main">
      <div class="layout-fixed">
        <slot />
        <div class="blog-regular">
          <article-summary v-for="article in articles"
            :id="article.id"
            :slug="article.slug"
            :title="article.title"
            :publicationDate="article.publicationDate"
            :readingTime="article.readingTime"
            :picture="article.picture"
            :author="article.author"
            :tags="article.tags"
            :summary="article.summary"
            :key="article.id"
          />
          <nav class="navigation" role="navigation">
            <div class="nav-previous">
              <router-link :to="getListRoute(+page + 1, tag)">
                <span class="meta-nav">←</span> Older posts
              </router-link>
            </div>
            <div class="nav-next">
              <router-link v-if="page > 1" :to="getListRoute(page - 1, tag)">
                Newer posts <span class="meta-nav">→</span>
              </router-link>
            </div>
          </nav>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import * as RouteHelper from '@/helpers/route-helper.js'

import ArticleSummary from '@/components/Articles/ArticleSummary.vue'

export default {
  name: 'article-list',
  components: {
    ArticleSummary
  },
  props: {
    articles: Array,
    page: [String, Number],
    tag: String
  },
  methods: {
    getListRoute: function (page, tag) {
      return RouteHelper.getListRoute(page, tag)
    }
  }
}
</script>
