initialize-release
initialize
	super initialize.
	self newLine: OSPlatform current lineEnding.
	self prettyPrint: false.
	self asciiOnly: false.
	self writeNil: false.
	self floatPrinter: self.
	level := 0