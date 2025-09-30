convenience
fromString: string
	"Parse string as JSON, so that maps become instances of me and lists instances of NeoJSONArray"

	^ self fromStream: string readStream