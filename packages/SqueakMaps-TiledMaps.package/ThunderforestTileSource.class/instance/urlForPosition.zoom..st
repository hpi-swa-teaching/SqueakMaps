as yet unclassified
urlForPosition: scaledPos zoom: zoom
	| s |
	s := 'http://tile.thunderforest.com/', layer, '/', zoom asString, '/', scaledPos x asString, '/', scaledPos y asString, '.png'.
	api apikey ifNotNil: [:k | s := s, '?apikey=', k].
	^ s asUrl