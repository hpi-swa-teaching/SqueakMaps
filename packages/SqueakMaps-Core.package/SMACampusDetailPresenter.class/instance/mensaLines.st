building
mensaLines

	| date menu |

	self target isMensa ifFalse: [^ #()].
	date := SMAMensaMenu nextServingDate.
	menu := self target
		mensaMenuUsing: self mensaProvider
		onDate: date.
	^ menu
		ifNil: [#()]
		ifNotNil: [:mensaMenu | mensaMenu detailLinesOnDate: date]
