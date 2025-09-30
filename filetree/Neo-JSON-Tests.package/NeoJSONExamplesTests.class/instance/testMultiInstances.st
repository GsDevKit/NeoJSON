tests
testMultiInstances
	"Newline delimited JSON (application/x-ndjson) - https://github.com/ndjson/ndjson-spec"
	"JSON Lines (application/jsonl) - https://jsonlines.org"

	| data json |
	
	data := (1 to: 10) collect: [ :each |
		{ #number -> each } asDictionary ].
	
	json := String streamContents: [ :out |
		(NeoJSONWriter on: out) nextPutAll: data ].
	
	self assert: (NeoJSONReader on: json readStream) upToEnd equals: data.
	
	self assert: (NeoJSONReader on: json readStream) next equals: data first.
	self deny: ((NeoJSONReader on: json readStream) next; atEnd)