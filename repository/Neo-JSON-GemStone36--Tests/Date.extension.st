Extension { #name : 'Date' }

{ #category : '*Neo-JSON-GemStone36--Tests' }
Date class >> fromISOString: aString [
	"YYYY-MM-DD format"
	"Date fromISOString: '1999-12-31'"

	^self fromString: aString usingFormat: #(3 2 1 $- 1 1)
]

{ #category : '*Neo-JSON-GemStone36--Tests' }
Date >> yyyymmdd [

	^ self asStringUsingFormat: #(3 2 1 $- 1 1)
]
