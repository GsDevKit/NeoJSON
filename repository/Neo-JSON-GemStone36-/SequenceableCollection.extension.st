Extension { #name : 'SequenceableCollection' }

{ #category : '*Neo-JSON-GemStone36-' }
SequenceableCollection >> allButLastDo: block [

	"Executes aBlock on each of the receiver's elements except for the last one"

	"(Array streamContents: [:stream | #(1 2 3) allButLastDo: [:each | stream nextPut: (each + 10)]]) >>> #(11 12)"

	1 to: self size - 1 do:
		[:index | block value: (self at: index)]
]

{ #category : '*Neo-JSON-GemStone36-' }
SequenceableCollection >> writeStream [

	^WriteStream on: self.
]
