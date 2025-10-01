accessing
nextPutAll: aCollection
	"Write a separate JSON representation of all objects in aCollection to my stream.
	This supports Newline delimited JSON (application/x-ndjson) & JSON Lines (application/jsonl).
	Warning: though each element is valid JSON, taken as a whole the result is non-valid JSON."
	
	aCollection do: [ :each |
		self nextPut: each.
		self newline ]