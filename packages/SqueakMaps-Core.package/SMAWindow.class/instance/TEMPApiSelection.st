build buttons and input fields
TEMPApiSelection
	
	| apiCalls action |
	apiCalls := Dictionary newFrom:  self TEMPapiCallsDictionary.
	action := (UIManager default chooseFromLabeledValues: apiCalls).
	action value.
	"self do: "
