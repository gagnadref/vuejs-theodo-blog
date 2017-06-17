import * as DateHelper from './date-helper'

export function getArticleRoute (publicationDate, slug) {
  return {
    name: 'year-month-slug',
    params: {
      year: DateHelper.getYear(publicationDate),
      month: DateHelper.getMonth(publicationDate),
      slug: slug
    }
  }
}

export function getAuthorRoute (slug) {
  return {
    name: 'author-author',
    params: {
      author: slug
    }
  }
}

export function getTagRoute (page, tag) {
  if (page > 1) {
    return {
      name: 'tag-tag-page-page',
      params: {
        page: page,
        tag: tag
      }
    }
  }

  return {
    name: 'tag-tag',
    params: {
      tag: tag
    }
  }
}

export function getListRoute (page, tag) {
  if (tag) {
    return getTagRoute(page, tag)
  }

  return {
    name: 'page-page',
    params: {
      page: page
    }
  }
}
