stats = require './stats'
js = require('./helpers').js

redirect = (url, tabId, originalUrl) ->
	if tabId
		if tabId > 0
			chrome.pageAction.show tabId

		stats.addBoost tabId

	console.log "boosted", originalUrl, js url

	{redirectUrl: js url}

module.exports =
	redirect: redirect
	ALLOW_REQUEST_TOKEN: {cancel: false}