testing
testNextServingDateSkipsWeekend

	| saturday sunday monday |

	saturday := Date newDay: 4 month: 7 year: 2026.
	sunday := Date newDay: 5 month: 7 year: 2026.
	monday := Date newDay: 6 month: 7 year: 2026.

	self
		assert: (SMAMensaMenu nextServingDateFrom: saturday)
		equals: monday.
	self
		assert: (SMAMensaMenu nextServingDateFrom: sunday)
		equals: monday.
	self
		assert: (SMAMensaMenu nextServingDateFrom: monday)
		equals: monday
