'use strict'

const Audit = require('lighthouse').Audit

const MAX_ARTICLE_LIST_READY = 6500

/**
 * @fileoverview Tests that `window.myLoadMetrics.searchableTime` was below the
 * test threshold value.
 */
class ArticleListAudit extends Audit {
  static get meta () {
    return {
      category: 'MyCustomCategory',
      name: 'article-list-ready',
      description: 'Articles list initialized and ready',
      helpText: 'Used to measure time from navigationStart to when the articles' +
          ' list is initialized and ready.',

      // The name of the custom gatherer class that provides input to this audit.
      requiredArtifacts: ['ArticleListGatherer']
    }
  }

  static audit (artifacts) {
    const loadMetrics = artifacts.ArticleListGatherer

    // Audit will pass when the search box loaded in less time than our threshold.
    // This score will be binary, so will get a red ✘ or green ✓ in the report.
    const belowThreshold = loadMetrics.articleListReady <= MAX_ARTICLE_LIST_READY

    return {
      rawValue: loadMetrics.articleListReady,
      score: belowThreshold
    }
  }
}

module.exports = ArticleListAudit
