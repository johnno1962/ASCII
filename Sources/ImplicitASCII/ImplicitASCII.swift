
/// Extends `UInt8` to allow direct comparisons with double quoted literals.
extension UInt8 {
  /// Returns a Boolean indicating whether the `UInt8` is equal to the provided Unicode scalar.
  ///
  /// - Parameters:
  ///   - i: The `UInt8` value to compare.
  ///   - s: The Unicode scalar to compare against.
  /// - Returns: `true` when the `UInt8` is equal to the provided Unicode scalar; otherwise, `false`.
  @_transparent
  public static func == (i: Self, s: Unicode.Scalar) -> Bool {
    return i == UInt8(ascii: s)
  }

  /// Returns a Boolean indicating whether the `UInt8` is not equal to the provided Unicode scalar.
  @_transparent
  public static func != (i: Self, s: Unicode.Scalar) -> Bool {
    return i != UInt8(ascii: s)
  }

  /// Enables pattern matching of Unicode scalars in switch statements.
  @_transparent
  public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
    return i == UInt8(ascii: s)
  }
}

/// Extends `Optional<UInt8>` to allow direct comparisons with double quoted literals.
extension UInt8? {
  /// Returns a Boolean value indicating whether the optional `UInt8` is equal to the provided Unicode scalar.
  ///
  /// - Parameters:
  ///   - i: The optional `UInt8` value to compare.
  ///   - s: The Unicode scalar to compare against.
  /// - Returns: `true` if the optional `UInt8` is equal to the provided Unicode scalar; otherwise, `false`.
  @_transparent
  public static func == (i: Self, s: Unicode.Scalar) -> Bool {
    return i == UInt8(ascii: s)
  }
  
  /// Returns a Boolean value indicating whether the optional `UInt8` is not equal to the provided Unicode scalar.
  @_transparent
  public static func != (i: Self, s: Unicode.Scalar) -> Bool {
    return i != UInt8(ascii: s)
  }
  
  /// Allows pattern matching of Unicode scalars in switch statements.
  @_transparent
  public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
    return i == UInt8(ascii: s)
  }
}
