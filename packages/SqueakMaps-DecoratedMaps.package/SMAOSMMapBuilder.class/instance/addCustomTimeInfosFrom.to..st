as yet unclassified
addCustomTimeInfosFrom: anXMLTag to: aCampusDetailTarget

	| prefix |
	prefix := 'squeakmaps:time:'.
	anXMLTag tagsNamed: #tag do: [:element |
		| key |
		key := element attributeAt: #k.
		(key beginsWith: prefix) ifTrue: [
			| label value |
			label := key copyFrom: prefix size + 1 to: key size.
			value := element attributeAt: #v.
			aCampusDetailTarget addTimeInfo: (SMATimeInfo label: label value: value)]]