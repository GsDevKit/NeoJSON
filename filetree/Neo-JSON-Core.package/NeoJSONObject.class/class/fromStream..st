convenience
fromStream: readStream
	"Parse stream as JSON, so that maps become instances of me and lists instances of NeoJSONArray"

	Smalltalk globals isDictionary
		ifTrue: [ "Pharo"
			^ (NeoJSONReader on: readStream readStream)
				mapClass: self;
				listClass: NeoJSONArray;
				propertyNamesAsSymbols: true;
				next ]
		ifFalse: [ "GemStone"
			^ (NeoJSONReader on: readStream)
				mapClass: self;
				listClass: NeoJSONArray;
				propertyNamesAsSymbols: true;
				next ]