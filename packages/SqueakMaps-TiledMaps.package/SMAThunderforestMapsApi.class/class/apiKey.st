accessing
apiKey

	^ ApiKey ifNil: [ApiKey := '' asString]