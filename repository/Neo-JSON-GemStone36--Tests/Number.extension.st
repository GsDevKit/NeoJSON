Extension { #name : 'Number' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> @ y [
	"Answer a Point whose x value is the receiver and whose y
	value is the argument."

	^Point x: self y: y
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> closeTo: another [
	"Things like #closeTo: are a sloppy sop to hide bad implementations.
	 Don't use them. Don't encourage their use."

	^self = another
]
