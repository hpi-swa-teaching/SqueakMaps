as yet unclassified
urlForPosition: scaledPos zoom: zoom
	| s |
	s := self imageryMetadata at: 'imageUrl'.
	s := s copyReplaceAll: '{subdomain}' with: (self imageryMetadata at: 'imageUrlSubdomains') atRandom.
	s := s copyReplaceAll: '{culture}' with: 'en-GB'. "TODO: configurable"
	s := s copyReplaceAll: '{quadkey}' with: (self quadkeyForX: scaledPos x y: scaledPos y zoom: zoom).
	^ s asUrl