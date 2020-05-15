as yet unclassified
initializeButtonRow
	self searchBar: (TextMorph new contents:  'search').
	self searchBar contents: 'hi' asString.
	self searchButton: (SimpleButtonMorph new color: Color gray; label: 'go!'; target: [self tiledMapMorph locate: self searchBar contents asString]; actionSelector: #value).
	self apiKeyInputField: (TextMorph new contents: 'enter bing api key').
	self apiKeyButton: (SimpleButtonMorph new color: Color blue; label: 'set api key'; target: [self api apikey: self apiKeyInputField contents asString. self tiledMapMorph tileSource: self api aerialWithLabelsOnDemandTileSource]; actionSelector: #value).