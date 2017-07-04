/* global describe, before, it */
const lighthouse = require('lighthouse')
const chromeLauncher = require('lighthouse/chrome-launcher/chrome-launcher')
const assert = require('chai').assert
const mlog = require('mocha-logger')
const axios = require('axios')

const saveAsGist = (LightouseResults) => {
  return axios.post('https://api.github.com/gists', {
    description: 'Lighthouse json report',
    public: true,
    files: {
      [`${Date.now()}.lighthouse.report.json`]: {
        content: JSON.stringify(LightouseResults)
      }
    }
  }).then((res) => {
    mlog.log(`FULL LIGHTHOUSE AUDIT: https://googlechrome.github.io/lighthouse/viewer/?gist=${res.data.id}`)
  })
}

const launchChromeAndRunLighthouse = (url, flags = {}, config = null) => {
  return chromeLauncher.launch().then(chrome => {
    flags.port = chrome.port
    return lighthouse(url, flags, config).then(results =>
      chrome.kill().then(() => results))
  })
}

describe('Lighthouse PWA Testing', function () {
  // Failsafe; could be long depending on what you're trying to test
  this.timeout(80000)
  let lighthouseAudits = null

  before('Run Lighthouse base test', (done) => {
    const url = 'http://localhost:8080'
    const flags = {output: 'json'}

    launchChromeAndRunLighthouse(url, flags).then(results => {
      lighthouseAudits = results.audits
      saveAsGist(results).then(() => done())
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

  it('should have first meaningful paint < 7000ms', (done) => {
    assert.isBelow(lighthouseAudits['first-meaningful-paint'].rawValue, 7000)
    done()
  })

  it('should be fast enough on 3G', (done) => {
    assert.isTrue(lighthouseAudits['load-fast-enough-for-pwa'].rawValue)
    done()
  })

  it('should have a perceptual speed index < 6,000', (done) => {
    assert.isBelow(lighthouseAudits['speed-index-metric'].rawValue, 6000)
    done()
  })

  it('should have an estimated input latency < 50 ms', (done) => {
    assert.isBelow(lighthouseAudits['estimated-input-latency'].rawValue, 50)
    done()
  })

  it('should have time to interactive < 7000ms', (done) => {
    assert.isBelow(lighthouseAudits['first-interactive'].rawValue, 7000)
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

  it('should use unique access keys', (done) => {
    assert.isTrue(lighthouseAudits['accesskeys'].rawValue)
    done()
  })
})
