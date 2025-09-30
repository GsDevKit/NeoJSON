I am NeoJSONFloatPrinter.

I print Float numbers in a compact, human friendly format.

The following (default) parameters are used:
 - base 10 - hardcoded (for now)
 - precision 5 digits
 - decimal point - hardcoded (for now)
 - exponent e - hardcoded (for now)
 - NaN, Inf and -Inf - hardcoded (for now)
 - lower 1e-4
 - upper 1e6
 - decimal notation for abs values inside abs [ lower, upper ]
 - scientific notation for abs values outside [ lower, upper ]
 - no padding, no trailing zeros in fraction part
 - only negative sign, never a positive sign
 - no thousands separators
 - no engineering notation

See my class side for configuration examples.

My public interface is in the printing protocol.
