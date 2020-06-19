build buttons and input fields
"Es wird jeweils eine Api gebaut, nur um die methode der TileSource aufzurufen
Wir müssen mal ein bisschen modellieren und ABhängigkeiten klar machen, um die architektur zu verschönern
load:with wird nicht mehr genutzt"


TEMPApiSelection
	
	| apiCalls |
	self halt.
	apiCalls := Dictionary newFrom:  self class TEMPapiCallsDictionary.
	UIManager default chooseFromLabeledValues: apiCalls
