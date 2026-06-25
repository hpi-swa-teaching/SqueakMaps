formatting
formattedPrice: aNumber

	^ ((aNumber printShowingDecimalPlaces: 2) copyReplaceAll: '.' with: ',') , ' EUR'