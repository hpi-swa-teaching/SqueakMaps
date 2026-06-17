ui
testPreventFreezeAfterCodeCoverage
	"This is a rather special test case. Its only purpose is to make sure that Squeak does not freeze after running the
	tests with code coverage. Without this method (or when using the mock geocoder instead of the real one) Squeak
	would become unresponsive after going through all tests when clicking 'Run Coverage'. We were not able to find
	out the reason for this. Discussion: https://hpi-swa-teaching.slack.com/archives/C02GKUS21L4/p1659547617524099"

	| nonexistingName |
	self model navigator geocoder: SMANominatimGeocoder new.
	
	nonexistingName := 'xzy343jr43-!-an-absolutely-not-existing-location'.
	self model searchInput: nonexistingName.
	[self model searchLocation] valueSupplyingAnswer: {'No location with name "', nonexistingName, '" found.'. #closeDialog}