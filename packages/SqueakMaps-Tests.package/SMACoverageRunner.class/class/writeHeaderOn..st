reporting
writeHeaderOn: stream
	stream
		nextPutAll: 'SqueakMaps lokale Method-Coverage'; cr;
		nextPutAll: 'Image: '; nextPutAll: Smalltalk version; cr;
		nextPutAll: 'Erstellt: '; nextPutAll: DateAndTime now printString; cr;
		nextPutAll: 'Metrik: ausgefuehrte Methoden / ausgewaehlte Methoden'; cr;
		nextPutAll: 'Hinweis: Dies ist keine Zeilen- oder Branch-Coverage.'; cr;
		nextPutAll: 'Aktive UI: SMAWindow und SqueakMapsWindow sind als veraltete, nicht mehr verwendete Fensterklassen ausgeschlossen.'; cr;
		nextPutAll: 'Qualitaetshinweis: Nicht abgedeckte Methoden werden bewusst ausgewiesen; es werden keine kuenstlichen Coverage-Tests verwendet.'; cr;
		nextPutAll: '============================================================'; cr; cr
