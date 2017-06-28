'use strict'

module.exports = {
  // 1. Run your custom tests along with all the default Lighthouse tests.
  extends: 'lighthouse:default',

  // 2. Add gatherer to the default Lighthouse load ('pass') of the page.
  passes: [{
    passName: 'defaultPass',
    gatherers: [
      'article-list-gatherer'
    ]
  }],

  // 3. Add custom audit to the list of audits 'lighthouse:default' will run.
  audits: [
    'article-list-ready'
  ],

  // 4. Create a new 'My site metrics' section in the default report for our results.
  categories: {
    mysite: {
      name: 'My site metrics',
      description: 'Metrics for our super awesome site',
      audits: [
        // When we add more custom audits, `weight` controls how they're averaged together.
        {id: 'article-list-ready', weight: 1}
      ]
    }
  }
}
