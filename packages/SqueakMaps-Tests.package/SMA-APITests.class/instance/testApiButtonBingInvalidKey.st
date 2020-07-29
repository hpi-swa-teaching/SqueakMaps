as yet unclassified
testApiButtonBingInvalidKey
	| invalidKey tileSourceBefore |
	invalidKey := 'Test'.
	tileSourceBefore := self subject tiledMapMorph tileSource class.
	[apiButton click] valueSupplyingAnswers: {{'choose mapmode' . 'SimpleMap gray [Bing]'} . {'Please enter your Bing Maps Api Key' . invalidKey} . {'Invalid key, please try again'. #closeDialog}}.
	self assert: tileSourceBefore equals: self subject tiledMapMorph tileSource class.