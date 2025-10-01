convenience
fromStream: readStream
	"Parse stream as JSON, so that maps become instances of me and lists instances of NeoJSONArray"

	^ (NeoJSONReader on: readStream)
			mapClass: self;
			listClass: NeoJSONArray;
			propertyNamesAsSymbols: true;
			next