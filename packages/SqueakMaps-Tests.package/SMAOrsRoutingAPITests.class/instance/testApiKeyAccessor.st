testing
testApiKeyAccessor

	| previous |
	previous := SMAORSRoutingAPI apiKey.
	[SMAORSRoutingAPI apiKey: 'test-key'.
	 self assert: SMAORSRoutingAPI apiKey equals: 'test-key']
		ensure: [SMAORSRoutingAPI apiKey: previous]
