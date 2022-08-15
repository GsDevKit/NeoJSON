Extension { #name : 'Symbol' }

{ #category : '*Neo-JSON-GemStone36-' }
Symbol >> asMutator [
	"often known as #asSetter"

	self last = $: ifTrue: [^self].
	^(self, ':') asSymbol
]

{ #category : '*Neo-JSON-GemStone36-' }
Symbol >> isUnary [

	^self argumentCount = 0
]
