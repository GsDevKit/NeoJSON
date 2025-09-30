convenience
readFrom: readStream
	"Parse stream as JSON, so that maps become instances of me and lists instances of NeoJSONArray"

	^ self fromStream: readStream