import Vue from 'vue'
import Vuex from 'vuex'

import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    articles: [],
    authors: [],
    tags: [],
    article: {}
  },
  mutations: {
    setAuthors (state, authors) {
      state.authors = authors
    },
    setTags (state, tags) {
      state.tags = tags
    },
    setArticles (state, articles) {
      state.articles = articles
    },
    setArticle (state, article) {
      state.article = article
    }
  },
  actions: {
    fetchAuthors ({ commit }) {
      axios
        .get('http://localhost:8000/authors')
        .then((res) => {
          commit('setAuthors', res.data)
        })
    },
    fetchTags ({ commit }) {
      axios
        .get('http://localhost:8000/tags')
        .then((res) => {
          commit('setTags', res.data)
        })
    },
    fetchArticles ({ commit }, params) {
      const urlParams = Object.keys(params).reduce(
        (acc, cur) => `${acc}${cur}=${params[cur]}&`,
        ''
      )

      axios
        .get(`http://localhost:8000/articles?${urlParams}`)
        .then((res) => {
          commit('setArticles', res.data)
        })
    },
    fetchArticle ({ commit }, { year, month, slug }) {
      return axios
        .get('http://localhost:8000/articles/' + year + '/' + month + '/' + slug)
        .then((res) => {
          commit('setArticle', res.data)
        })
    }
  }
})
