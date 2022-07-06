as yet unclassified
transportationModeLookup: aSymbol
	
	^ (self transportationModeLookupTable) at: aSymbol ifAbsent: [^ self defaultTransportationMode]