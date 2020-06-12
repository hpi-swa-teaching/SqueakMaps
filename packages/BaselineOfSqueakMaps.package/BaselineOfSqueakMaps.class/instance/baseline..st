baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec baseline: 'Project12' with: [
				spec
					repository: 'github://hpi-swa-teaching/Morphic-Testing-Framework:master/packages'].
			spec
				package: 'SqueakMaps-Core';
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core' 'Project12')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core');
				group: 'tests' with: #('SqueakMaps-Tests')];
				yourself
