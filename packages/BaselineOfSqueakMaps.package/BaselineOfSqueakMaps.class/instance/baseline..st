baseline
baseline: spec
	<baseline>
	spec for: #'common'
		do: [
			spec
				package: 'SqueakMaps-Core';
				package: 'SqueakMaps-Tests' with: [spec requires: #('SqueakMaps-Core')];
				yourself.
			spec
				group: 'default' with: #('SqueakMaps-Core');
				group: 'tests' with: #('SqueakMaps-Tests')];
				yourself
