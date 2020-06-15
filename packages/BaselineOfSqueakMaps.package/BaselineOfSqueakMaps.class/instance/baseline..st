baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'MorphicTestingFramework' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				package: 'SqueakMaps-Core';
				package: 'TiledMaps'
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'MorphicTestingFramework' 'TiledMaps')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core');
				group: 'tests' with: #('SqueakMaps-Tests')];
				yourself
