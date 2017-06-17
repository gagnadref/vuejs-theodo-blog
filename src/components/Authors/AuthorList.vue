<template>
  <div id="secondary" class="widget-area sidebar" role="complementary">
    <aside id="author_avatars-3" class="widget widget_author_avatars">
      <h3 class="widget-title">Blog Authors</h3>
      <div class="author-list">
        <author-thumbnail v-for="author in authors"
          :id="author.id"
          :slug="author.slug"
          :picture="author.picture"
          :key="author.id"
        />
      </div>
    </aside>
  </div>
</template>

<script>
import AuthorThumbnail from '@/components/Authors/AuthorThumbnail.vue'

export default {
  name: 'author-list',
  components: {
    AuthorThumbnail
  },
  props: {
    authors: Array
  }
}
</script>
