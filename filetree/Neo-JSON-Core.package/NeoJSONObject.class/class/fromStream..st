convenience
fromStream: readStream
	"Parse stream as JSON, so that maps become instances of me and lists instances of NeoJSONArray"
	| jsonReader |

	jsonReader := Smalltalk globals isDictionary
		ifTrue: [ "Pharo"
			NeoJSONReader on: readStream readStream ]
		ifFalse: [ "GemStone"
			NeoJSONReader on: readStream ].

	^ jsonReader 
			mapClass: self;
			listClass: NeoJSONArray;
			propertyNamesAsSymbols: true;
			next