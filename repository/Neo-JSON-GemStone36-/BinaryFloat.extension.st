Extension { #name : 'BinaryFloat' }

{ #category : '*Neo-JSON-GemStone36-' }
BinaryFloat >> isFinite [
	"simple, byte-order independent test for rejecting Not-a-Number and (Negative)Infinity"

	^(self - self) = 0.0
]

{ #category : '*Neo-JSON-GemStone36-' }
BinaryFloat >> isNaN [

	^ self _isNaN
]

{ #category : '*Neo-JSON-GemStone36-' }
BinaryFloat >> isZero [

	^self = 0.0d0
]
