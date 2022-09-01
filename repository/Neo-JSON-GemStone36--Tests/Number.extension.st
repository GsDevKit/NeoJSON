Extension { #name : 'Number' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> @ y [
	"Answer a Point whose x value is the receiver and whose y
	value is the argument."

	^Point x: self y: y
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> adaptToPoint: rcvr andSend: selector [
	"If I am involved in arithmetic with a Point, convert me to a Point."

	^ rcvr perform: selector with: self @ self
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> closeTo: another [
	"Things like #closeTo: are a sloppy sop to hide bad implementations.
	 Don't use them. Don't encourage their use."

	^self = another
]
