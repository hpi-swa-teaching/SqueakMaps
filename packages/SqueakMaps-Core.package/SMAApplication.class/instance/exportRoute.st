building
exportRoute

	| fileName |

	self routes isEmpty ifTrue: [
		^ self inform: 'Please create a route first.'
	].

	fileName := (UIManager default saveFilenameRequest: 'Save GPX as:' initialAnswer: 'route.gpx').
	fileName ifNil: [ ^ self ].

	self writeFullRouteGpxToFile: fileName.