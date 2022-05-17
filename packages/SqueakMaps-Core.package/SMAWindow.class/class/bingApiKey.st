accessing
bingApiKey

	^ BingApiKey ifNil: [BingApiKey := '' asString]