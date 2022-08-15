Extension { #name : 'Number' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> @ y [
	"Answer a Point whose x value is the receiver and whose y
	value is the argument."

	^Point x: self y: y
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> hour [

	^ Duration days: 0 hours: self minutes: 0 seconds: 0
]
