accessing
worldPos

	(worldPos isNil)
		ifTrue: [^ SMAMapConfigurator latLongToWorldPos: self latLong]
		ifFalse: [^ worldPos]