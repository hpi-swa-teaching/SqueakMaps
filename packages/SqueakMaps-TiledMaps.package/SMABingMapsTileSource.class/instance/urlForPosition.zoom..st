as yet unclassified
urlForPosition: aScaledPosition zoom: aZoom

	| position |

	position := self imageryMetadata at: 'imageUrl'.
	position := position copyReplaceAll: '{subdomain}' with: (self imageryMetadata at: 'imageUrlSubdomains') atRandom.
	position := position copyReplaceAll: '{culture}' with: 'en-GB'.
	position := position copyReplaceAll: '{quadkey}' with: (self quadkeyForX: aScaledPosition x y: aScaledPosition y zoom: aZoom).
	
	^ position asUrl