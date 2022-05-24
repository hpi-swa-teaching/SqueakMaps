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
				package: 'SqueakMaps-TiledMaps';
				package: 'SqueakMaps-Core' with: [spec requires: #('JSON' 'SqueakMaps-TiledMaps' 'MorphicTestingFramework')];
				package: 'SqueakMaps-APIs' with: [spec requires: #('SqueakMaps-Core' 'JSON')];
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'SqueakMaps-APIs' 'JSON' 'SqueakMaps-TiledMaps' 'MorphicTestingFramework')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core' 'SqueakMaps-APIs');
				group: 'tests' with: #('SqueakMaps-Tests')]
