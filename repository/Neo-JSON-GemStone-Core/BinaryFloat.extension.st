Extension { #name : #'BinaryFloat' }

{ #category : #'*neo-json-gemstone-core' }
BinaryFloat class >> negativeInfinity [

    ^ self fromString: #'MinusInfinity'
]

{ #category : #'*neo-json-gemstone-core' }
BinaryFloat class >> zero [

    ^ 0.0
]

{ #category : #'*neo-json-gemstone-core' }
BinaryFloat >> isFinite [

    ^(self - self) = 0.0
]

{ #category : #'*neo-json-gemstone-core' }
BinaryFloat >> isZero [

    ^ self = 0.0
]
