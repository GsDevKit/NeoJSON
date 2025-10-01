accessing
atPath: keyCollection add: newValue
	"Use each key in keyCollection recursively, create new levels when needed.
	Note how keys can also be indexes to arrays.
	This variant will insert/add to arrays."

	| target |
	keyCollection ifEmpty: [ ^ self ].
	target := self.
	keyCollection allButLastDo: [ :each |
		target := target 
			at: each
			ifAbsent: [ target at: each add: target species new ] ].
	^ target at: keyCollection last add: newValue