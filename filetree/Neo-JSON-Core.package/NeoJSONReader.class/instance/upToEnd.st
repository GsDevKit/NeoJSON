accessing
upToEnd
	"Parse and collect JSON values from my stream until it ends, returning the collection.
	This supports Newline delimited JSON (application/x-ndjson) & JSON Lines (application/jsonl).
	Warning: though each element is valid JSON, taken as a whole the result is non-valid JSON."
	
	^ Array streamContents: [ :out |
		[ self atEnd ] whileFalse: [ out nextPut: self next ] ]