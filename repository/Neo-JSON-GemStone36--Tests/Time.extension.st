Extension { #name : 'Time' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Time class >> hour: h minute: m second: s [
	"{
		Time hour: 0 minute: 0 second: 0.
		Time hour: 0 minute: 0 second: 1.
		Time hour: 0 minute: 1 second: 0.
		Time hour: 0 minute: 1 second: 1.
		Time hour: 1 minute: 0 second: 0.
		Time hour: 1 minute: 0 second: 1.
		Time hour: 1 minute: 1 second: 0.
		Time hour: 1 minute: 1 second: 1.
		}"

	^self fromSeconds: ((h * 60) + m) * 60 + s
]
