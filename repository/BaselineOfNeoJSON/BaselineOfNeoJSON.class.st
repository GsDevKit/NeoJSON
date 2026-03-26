"
I am BaselineOfNeoJSON, I load the code for the NeoJSON project.
I am a BaselineOf.
"
Class {
	#name : #BaselineOfNeoJSON,
	#superclass : #BaselineOf,
	#category : #BaselineOfNeoJSON
}

{ #category : #baselines }
BaselineOfNeoJSON >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Neo-JSON-Core';
				package: 'Neo-JSON-Tests' with: [ spec requires: #('Neo-JSON-Core') ];
				group: 'default' with: #('Core' 'Tests');
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
				group: 'Examples' with: #('Neo-JSON-Pharo-Examples') ].
	spec
		for: #gemstone
		do: [ spec
				package: 'Neo-JSON-GemStone-Core' with: [ spec requires: #('Neo-JSON-Core') ];
				package: 'Neo-JSON-GemStone-Tests' with: [ spec requires: #('Neo-JSON-Tests') ];
				package: 'Neo-JSON-GemStone-Examples' with: [ spec requires: #('Neo-JSON-Core') ];
				group: 'Core' with: #('Neo-JSON-Core' 'Neo-JSON-GemStone-Core');
				group: 'Tests' with: #('Neo-JSON-Tests' 'Neo-JSON-GemStone-Tests');
				group: 'Examples' with: #('Neo-JSON-GemStone-Examples') ].
]
