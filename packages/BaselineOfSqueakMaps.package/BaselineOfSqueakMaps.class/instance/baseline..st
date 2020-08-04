baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'MorphicTestingFramework' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
					
			spec   
				package: 'JSON'
						with: [
							spec
								file: 'JSON-ul.35';
								repository: 
										'http://www.squeaksource.com/JSON' ].
					
			spec
				package: 'SqueakMaps-Core';
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'JSON' 'SqueakMaps-TiledMaps' 'MorphicTestingFramework')];
				package: 'SqueakMaps-TiledMaps';
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core' . 'SqeakMaps-TiledMaps');
				group: 'tests' with: #('SqueakMaps-Tests')]
