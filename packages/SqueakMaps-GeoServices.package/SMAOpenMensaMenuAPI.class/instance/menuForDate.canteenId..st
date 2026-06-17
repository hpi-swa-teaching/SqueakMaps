searching
menuForDate: aDate canteenId: anInteger

	| json |

	[
		json := self contentSource getJsonFrom:
			(self mealsUrlForDate: aDate canteenId: anInteger).
		^ self menuFromJson: json date: aDate]
			on: Error
			do: [:error | ^ SMAMensaMenu unavailableForDate: aDate]