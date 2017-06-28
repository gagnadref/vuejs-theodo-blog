'use strict'

const Gatherer = require('lighthouse').Gatherer

/**
 * @fileoverview Extracts `window.myLoadMetrics` from the test page.
 */

class ArticleListGatherer extends Gatherer {
  afterPass (options) {
    const driver = options.driver

    return driver.evaluateAsync('window.myLoadMetrics')
      // Ensure returned value is what we expect.
      .then(loadMetrics => {
        if (!loadMetrics || loadMetrics.articleListReady === undefined) {
          // Throw if page didn't provide the metrics we expect. This isn't
          // fatal -- the Lighthouse run will continue, but any audits that
          // depend on this gatherer will show this error string in the report.
          throw new Error('Unable to find load metrics in page')
        }
        return loadMetrics
      })
  }
}

module.exports = ArticleListGatherer
