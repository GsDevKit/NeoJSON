accessing
removeAtPath: keyCollection
	"Use each key in keyCollection recursively and remove the final key.
	Note how keys can also be indexes to arrays."

	| target |
	keyCollection ifEmpty: [ ^ self ].
	target := self.
	keyCollection allButLastDo: [ :each |
		target := target at: each ifAbsent: [ ^ self ] ].
	^ target removeKey: keyCollection last