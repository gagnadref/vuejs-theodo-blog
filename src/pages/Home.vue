<template>
  <div id="main" class="site-main">
    <article-list :articles="$store.state.articles" :page="page" :tag="tag">
    </article-list>
    <author-list :authors="$store.state.authors">
    </author-list>
  </div>
</template>

<script>
import ArticleList from '@/components/Articles/ArticleList.vue'
import AuthorList from '@/components/Authors/AuthorList.vue'

export default {
  name: 'home',
  components: {
    ArticleList,
    AuthorList
  },
  props: {
    page: {
      type: [String, Number],
      default: 1
    },
    tag: {
      type: String,
      default: ''
    },
    author: {
      type: String,
      default: ''
    }
  },
  mounted: function () {
    this.$store.dispatch('fetchTags')
    this.$store.dispatch('fetchArticles', {
      page: this.page,
      tag: this.tag,
      author: this.author
    })
    this.$store.dispatch('fetchAuthors')
  }
}
</script>
