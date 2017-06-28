<template>
  <article :id="'post-' + id" :class="'post-' + id" class="post type-post status-private format-standard hentry category-hiring category-internal tag-hiringreferralgrowth">
    <header class="entry-header">
      <article-header
        :id="id"
        :slug="slug"
        :title="title"
        :publicationDate="publicationDate"
        :readingTime="readingTime"
        :author="author"
        :tags="tags"
      >
        <h2 class="entry-title">
          <router-link :to="url">{{ title }}</router-link>
        </h2>
      </article-header>
    </header>
    <div class="featured-image">
      <img width="1200" :src="picture" :alt="title" title="">
    </div>
    <div class="entry-content">
      <p>{{ summary }}
        <span class="more">
          <router-link :to="url" class="more-link">
            Continue reading
            <span class="meta-nav">→</span>
          </router-link>
        </span>
      </p>
    </div>
  </article>
</template>

<script>
import * as RouteHelper from '@/helpers/route-helper.js'

import ArticleHeader from '@/components/Articles/ArticleHeader.vue'

export default {
  name: 'article-summary',
  components: {
    ArticleHeader
  },
  props: {
    id: Number,
    slug: String,
    title: String,
    publicationDate: String,
    readingTime: String,
    picture: String,
    author: Object,
    tags: Array,
    summary: String
  },
  computed: {
    url: function () {
      return RouteHelper.getArticleRoute(this.publicationDate, this.slug)
    }
  },
  mounted: function () {
    window.myLoadMetrics = {}
    window.myLoadMetrics.articleListReady = performance.now()
  }
}
</script>
