build buttons and input fields
apiSelection
	
	| apiCalls action |
	apiCalls := Dictionary newFrom:  self TEMPapiCallsDictionary.
	action := (UIManager default chooseFromLabeledValues: apiCalls).
	action value.
	"self do: "
