Extension { #name : 'Number' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Number >> @ y [
	"Answer a Point whose x value is the receiver and whose y
	value is the argument."

	^Point x: self y: y
]
