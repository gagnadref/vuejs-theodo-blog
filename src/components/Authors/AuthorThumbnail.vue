<template>
  <div class="user" :class="'user-' + id">
    <router-link :to="authorUrl" title="">
      <span class="avatar" title="">
        <img :src="picture"
             class="avatar avatar-96 photo avatar-default"
             height="96"
             width="96"
             title=""
             alt="">
      </span>
    </router-link>
  </div>
</template>

<script>
import * as RouteHelper from '@/helpers/route-helper.js'

export default {
  name: 'author-thumbnail',
  props: {
    id: Number,
    slug: String,
    picture: String
  },
  computed: {
    authorUrl: function () {
      return RouteHelper.getAuthorRoute(this.slug)
    }
  }
}
</script>
