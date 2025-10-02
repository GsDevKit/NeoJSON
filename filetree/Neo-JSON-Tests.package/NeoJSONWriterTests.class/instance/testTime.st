testing
testTime
testTime
	| timeClassType hourFormat writer |
	timeClassType := (Smalltalk globals at: #'SmallTime' ifAbsent: [ nil ]) ifNil: [ Time ] ifNotNil: [ SmallTime ].
	"Hours could be in 12-hour format or 24-hour format"
	hourFormat := (Time hour: 14 minute: 0 second: 0) hours = 2 ifTrue: [ '2' ] ifFalse: [ '14' ].
	writer := [ :object | 
		String streamContents: [ :stream |
				(NeoJSONWriter on: stream) for: timeClassType customDo: [ :mapping |
						mapping encoder: [ :time | time printString ] ];
					nextPut: object ] ]. 
	self assert: ((writer value: (Time fromSeconds: 52208)) includesSubstring: hourFormat, ':30:08')