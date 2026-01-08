nested dictionaries
at: firstKey at: secondKey
	"I return nil for missing keys.
	My superclass would signal a KeyNotFound."

	^ self atPath: { firstKey. secondKey }