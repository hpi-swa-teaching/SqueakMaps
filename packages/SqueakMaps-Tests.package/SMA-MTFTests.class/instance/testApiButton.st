as yet unclassified
testApiButton
	
	[apiButton click] valueSupplyingAnswer: {'Cycling [Thunderforest]'. #closeDialog}.
	self assert: subject tiledMapMorph tileSource class equals: ThunderforestTileSource
	"apiMenu := self subject findByName: 'MenuMorph'.
	self assert: apiMenu notNil."