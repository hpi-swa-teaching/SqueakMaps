route management
exportRoute

	| fileName gpx |

	self routes isEmpty ifTrue: [
		^ self inform: 'Please create a route first.'
	].

	fileName := (UIManager default saveFilenameRequest: 'Save GPX as:' initialAnswer: 'route.gpx').
	fileName ifNil: [ ^ self ].

	gpx := self parseToGPXStringFromARoute: self routes.
	
	FileStream forceNewFileNamed: fileName do: [:f |
		f nextPutAll: gpx ].