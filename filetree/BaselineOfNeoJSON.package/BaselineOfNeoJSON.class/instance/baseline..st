baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Neo-JSON-Core';
				package: 'Neo-JSON-Tests' with: [ spec requires: #('Neo-JSON-Core') ];
				group: 'default' with: #('core' 'tests');
				group: 'Core' with: #('Neo-JSON-Core');
				group: 'Tests' with: #('Neo-JSON-Tests') ].
	spec
		for: #pharo
		do: [ spec
				package: 'Neo-JSON-Pharo-Core' with: [ spec requires: #('Neo-JSON-Core') ];
				package: 'Neo-JSON-Pharo-Tests' with: [ spec requires: #('Neo-JSON-Tests') ];
				package: 'Neo-JSON-Pharo-Examples' with: [ spec requires: #('Neo-JSON-Core') ];
				group: 'Core' with: #('Neo-JSON-Core' 'Neo-JSON-Pharo-Core');
				group: 'Tests' with: #('Neo-JSON-Tests' 'Neo-JSON-Pharo-Tests');
				group: 'examples' with: #('Neo-JSON-Pharo-Examples') ].