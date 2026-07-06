testing
testCanteenFetchesMensaMenuThroughDomainHook

	| date menu provider canteen result |

	date := Date newDay: 7 month: 6 year: 2026.
	menu := SMAMensaMenu emptyForDate: date message: 'Leer'.
	provider := SMAMensaProviderMock new
		menu: menu;
		yourself.
	canteen := SMAPOICanteen new
		openMensaCanteenId: 42;
		yourself.
	result := canteen mensaMenuUsing: provider onDate: date.

	self assert: result equals: menu.
	self assert: provider requestedDate equals: date.
	self assert: provider requestedCanteenId equals: 42
