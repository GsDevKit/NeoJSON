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
