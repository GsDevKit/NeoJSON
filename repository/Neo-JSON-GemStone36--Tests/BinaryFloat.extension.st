Extension { #name : 'BinaryFloat' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
BinaryFloat >> closeTo: another [
	"Things like #closeTo: are a sloppy sop to hide bad implementations.
	 Don't use them. Don't encourage their use."

	^self = another
]
