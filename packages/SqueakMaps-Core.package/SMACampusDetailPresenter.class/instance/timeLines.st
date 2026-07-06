building
timeLines

	^ self target timeInfos collect: [:info | info label -> info value]
