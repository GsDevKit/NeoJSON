Extension { #name : 'Float' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Float class >> infinity [

	^ PlusInfinity
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Float class >> nan [

	^ PlusQuietNaN
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Float class >> zero [

	^ 0.0d0
]
