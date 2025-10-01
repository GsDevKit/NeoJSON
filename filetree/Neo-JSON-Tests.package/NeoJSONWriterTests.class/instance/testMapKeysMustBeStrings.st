testing
testMapKeysMustBeStrings
	self should: [ NeoJSONWriter toString: { 1->#a } asDictionary ] raise: Error.
	self should: [ NeoJSONWriter toString: { true->#a } asDictionary ] raise: Error.
	self should: [ NeoJSONWriter toString: { nil->#a } asDictionary ] raise: Error.
	self should: [ NeoJSONWriter toString: { #()->#a } asDictionary ] raise: Error.
	self should: [ NeoJSONWriter toString: { Dictionary new->#a } asDictionary ] raise: Error.
	self should: [ NeoJSONWriter toString: { Float pi->#a } asDictionary ] raise: Error.