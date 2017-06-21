/* global describe, before, it */
const lighthouse = require('lighthouse')
const chromeLauncher = require('lighthouse/chrome-launcher/chrome-launcher')
const assert = require('chai').assert

describe('Lighthouse PWA Testing', function () {
  // Failsafe; could be long depending on what you're trying to test
  this.timeout(60000)
  let lighthouseAudits = null

  before('Run Lighthouse base test', (done) => {
    const url = 'http://localhost:8080'
    const flags = {output: 'json'}

    chromeLauncher.launch().then(chrome => {
      flags.port = chrome.port

      lighthouse(url, flags).then(results => {
        chrome.kill().then(() => {
          lighthouseAudits = results.audits
          done()
        })
      })
    })
  })

  it('should have service worker', (done) => {
    assert.isTrue(lighthouseAudits['service-worker'].rawValue)
    done()
  })

  it('should work offline', (done) => {
    assert.isTrue(lighthouseAudits['works-offline'].rawValue)
    done()
  })

  it('should have a viewport meta tag', (done) => {
    assert.isTrue(lighthouseAudits['viewport'].rawValue)
    done()
  })

  it('should work without javascript', (done) => {
    assert.isTrue(lighthouseAudits['without-javascript'].rawValue)
    done()
  })

  it('should have first meaningful paint < 500ms', (done) => {
    assert.isBelow(lighthouseAudits['first-meaningful-paint'].rawValue, 500)
    done()
  })

  it('should be fast enough on 3G', (done) => {
    assert.isTrue(lighthouseAudits['load-fast-enough-for-pwa'].rawValue)
    done()
  })

  it('should have a perceptual speed index < 1,250', (done) => {
    assert.isBelow(lighthouseAudits['speed-index-metric'].rawValue, 1250)
    done()
  })

  it('should have an estimated input latency < 50 ms', (done) => {
    assert.isBelow(lighthouseAudits['estimated-input-latency'].rawValue, 50)
    done()
  })

  it('should have time to interactive < 1000ms', (done) => {
    assert.isBelow(lighthouseAudits['first-interactive'].rawValue, 1000)
    done()
  })

  it('should prompt the user to install the Web App', (done) => {
    assert.isTrue(lighthouseAudits['webapp-install-banner'].rawValue)
    done()
  })

  it('should have a custom splash screen', (done) => {
    assert.isTrue(lighthouseAudits['splash-screen'].rawValue)
    done()
  })

  it('should display an address bar that matches brand colors', (done) => {
    assert.isTrue(lighthouseAudits['themed-omnibox'].rawValue)
    done()
  })

  it('should display content correctly sized for the viewport', (done) => {
    assert.isTrue(lighthouseAudits['content-width'].rawValue)
    done()
  })

  it('should not use deprecated APIs', (done) => {
    assert.isTrue(lighthouseAudits['deprecations'].rawValue)
    done()
  })

  it('should work on Edge, Firefox and Safari', (done) => {
    assert.isTrue(lighthouseAudits['pwa-cross-browser'].rawValue)
    done()
  })

  it('should have snappy transitions', (done) => {
    assert.isTrue(lighthouseAudits['pwa-page-transitions'].rawValue)
    done()
  })

  it('should use individual URLs for each page', (done) => {
    assert.isTrue(lighthouseAudits['pwa-each-page-has-url'].rawValue)
    done()
  })

  it('should use unique access keys', (done) => {
    assert.isTrue(lighthouseAudits['accesskeys'].rawValue)
    done()
  })
})
