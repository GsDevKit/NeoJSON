Extension { #name : 'Collection' }

{ #category : '*Neo-JSON-GemStone36-' }
Collection >> associationsDo: aBlock [
	"Evaluate aBlock for each of the receiver's elements which are expected to be key/value 
	associations.  If any non-association is within, the error is not caught now,
	but later, when a key or value message is sent to it."

	self do: aBlock
]
