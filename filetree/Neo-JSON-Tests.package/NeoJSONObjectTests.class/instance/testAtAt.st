testing
testAtAt
	| object |
	object := NeoJSONObject new.
	self assert: (object at: #foo) isNil.
	self assert: (object at: #foo at: #bar) isNil.
	object at: #foo at: #bar put: 123.
	self assert: (object at: #foo) notNil.
	self assert: (object at: #foo at: #bar) equals: 123.
	self assert: object foo bar equals: 123.
	object at: #foo at: #bar put: -1.
	self assert: (object at: #foo at: #bar) equals: -1.
	self assert: (object at: #foo at: #foo) isNil