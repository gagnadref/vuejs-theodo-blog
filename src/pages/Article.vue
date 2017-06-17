<template>
  <div id="main" class="site-main">
    <div id="primary" class="content-area">
      <div id="content" class="site-content" role="main" v-if="this.article">
        <div class="post-thumbnail" :style="'background-image: url(' + article.picture + ');'">
          <div class="f-image">
            <img width="1920" :src="article.picture" title="">
          </div>
          <header class="entry-header">
            <div class="layout-fixed">
              <ArticleHeader
                :id="article.id"
                :slug="article.slug"
                :title="article.title"
                :publicationDate="article.publicationDate"
                :readingTime="article.readingTime"
                :author="article.author"
                :tags="article.tags"
              />
            </div>
          </header>
        </div>
        <div class="layout-fixed">
          <article :id="'post-' + article.id" :class="'post-' + article.id" class="post type-post status-private format-standard hentry category-hiring category-internal tag-hiringreferralgrowth">
            <div class="entry-content">
              <div v-html="article.content"></div>
              <aside class="about-author">
                <h3>WRITTEN BY</h3>
                <div class="author-bio">
                  <div style="min-height: 110px;">
                    <div class="author-img">
                      <router-link :to="authorUrl">
                        <img :alt="article.author.slug" :src="article.author.picture" class="avatar avatar-192 photo avatar-default" height="192" width="192">
                      </router-link>
                    </div>
                    <div class="author-info">
                      <h4 class="author-name">{{ article.author.name }}</h4>
                      <p class="selectionShareable">
                      </p>
                    </div>
                  </div>
                </div>
              </aside>
            </div>
          </article>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import * as RouteHelper from '@/helpers/route-helper.js'

import ArticleHeader from '@/components/Articles/ArticleHeader.vue'

export default {
  components: {
    ArticleHeader
  },
  props: {
    year: String,
    month: String,
    slug: String
  },
  computed: {
    article: function () {
      return this.$store.state.article
    },
    authorUrl: function () {
      return RouteHelper.getAuthorRoute(this.article.author.slug)
    }
  },
  mounted: function () {
    this.$store.dispatch('fetchArticle', {year: this.year, month: this.month, slug: this.slug})
  }
}
</script>
