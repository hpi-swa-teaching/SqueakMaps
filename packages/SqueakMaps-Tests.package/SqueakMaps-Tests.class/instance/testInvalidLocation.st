testing
testInvalidLocation


	
	self squeakMapsWindow searchBar contents: 'berghain'.
	self squeakMapsWindow searchButton doButtonAction.
	
	self squeakMapsWindow searchBar contents: 'textMorph'.
	(self squeakMapsWindow searchButton doButtonAction) click.
	"self assert: self squeakMapsWindow searchButton doButtonAction equals: self squeakMapsWindow tiledMapMorph."
	self squeakMapsWindow owner 

	
	
	self assert: self squeakMapsWindow tiledMapMorph center equals: (MapTileLoader latLongToWorldPos: (13.4430356@52.5111669))
	