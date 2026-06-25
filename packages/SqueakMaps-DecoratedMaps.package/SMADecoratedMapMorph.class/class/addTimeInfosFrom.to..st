as yet unclassified
addTimeInfosFrom: anXMLTag to: aCampusDetailTarget

	self timeInfoDefinitions do: [:definition |
		| value |
		value := self
			tagValueNamed: definition key
			in: anXMLTag
			ifAbsent: [nil].
		value ifNotNil: [
			aCampusDetailTarget addTimeInfo:
				(SMATimeInfo label: definition value value: value)]].
	self addCustomTimeInfosFrom: anXMLTag to: aCampusDetailTarget