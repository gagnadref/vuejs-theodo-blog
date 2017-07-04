<template>
  <header id="masthead" class="site-header" role="banner">
    <h2 class="site-title">
      <router-link to="/" rel="home">
        <img alt="Theodo" src="/static/img/logo.png" width="120" height="30">
      </router-link>
    </h2>
    <nav id="primary-navigation" class="site-navigation primary-navigation" role="navigation">
      <a class="menu-toggle toggle-link"></a>
      <div class="nav-menu">
        <ul id="nav" class="menu-custom vs-nav">
          <li id="menu-item-2665" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2665">
            <router-link :to="{ name: 'tag-tag', params: { tag: 'programming' }}">Tech</router-link>
          </li>
          <li id="menu-item-2667" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2667">
            <router-link :to="{ name: 'tag-tag', params: { tag: 'methods' }}">Methods</router-link>
          </li>
          <li id="menu-item-2666" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-2666">
            <router-link :to="{ name: 'tag-tag', params: { tag: 'corporate' }}">Lifestyle</router-link>
          </li>
          <li id="menu-item-7352" class="menu-item menu-item-type-taxonomy menu-item-object-category menu-item-7352">
            <router-link :to="{ name: 'tag-tag', params: { tag: 'events' }}">Events</router-link>
          </li>
          <li id="menu-item-4154" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-4154">
          </li>
        </ul>
      </div>
    </nav>
  </header>
</template>

<script>
export default {
  name: 'blog-header'
}
</script>
