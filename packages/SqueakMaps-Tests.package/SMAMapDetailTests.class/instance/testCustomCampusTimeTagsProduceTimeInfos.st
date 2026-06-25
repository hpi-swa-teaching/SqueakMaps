as yet unclassified
testCustomCampusTimeTagsProduceTimeInfos

	| xml decoratedMap poi |
	xml := '<?xml version=''1.0'' encoding=''UTF-8''?>
<osm version=''0.6''>
  <bounds minlat=''52.39'' minlon=''13.13'' maxlat=''52.40'' maxlon=''13.14'' />
  <node id=''-1001'' action=''modify'' lat=''52.39335'' lon=''13.13020''>
    <tag k=''room'' v=''office'' />
    <tag k=''name'' v=''Prof. Example'' />
    <tag k=''squeakmaps:time:Sprechzeiten'' v=''Di 10:00-12:00'' />
    <tag k=''squeakmaps:time:Clubtreffen'' v=''Mi 18:00-20:00'' />
  </node>
</osm>'.
	decoratedMap := SMADecoratedMapMorph fromOSMFile: xml readStream.
	poi := decoratedMap pointsOfInterest first.

	self assert: poi hasTimeInfos.
	self assert: (poi timeInfos anySatisfy: [:info |
		info label = 'Sprechzeiten']).
	self assert: (poi timeInfos anySatisfy: [:info |
		info label = 'Clubtreffen'])