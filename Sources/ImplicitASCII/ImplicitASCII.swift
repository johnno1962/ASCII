
/// Extends `UInt8` providing initialization from a Unicode scalar.
extension UInt8 {
  /// Initializes a FixedWidthInteger with the value of the provided Unicode scalar.
  ///
  /// - Parameter unicode: The Unicode scalar to initialize from.
  /// - Note: Construct with value `v.value`.
  @inlinable
  public init?(ifASCII v: Unicode.Scalar) {
    guard v.value < 0x80 else { return nil }
    self = Self(v.value)
  }
}

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
    #if DEBUG
    return i == UInt8(ascii: s)
    #else
    return i == UInt8(ifASCII: s)
    #endif
  }

  /// Returns a Boolean indicating whether the `UInt8` is not equal to the provided Unicode scalar.
  @_transparent
  public static func != (i: Self, s: Unicode.Scalar) -> Bool {
    #if DEBUG
    return i != UInt8(ascii: s)
    #else
    return i != UInt8(ifASCII: s)
    #endif
  }

  /// Enables pattern matching of Unicode scalars in switch statements.
  @_transparent
  public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
    #if DEBUG
    return i == UInt8(ascii: s)
    #else
    return i == UInt8(ifASCII: s)
    #endif
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
    #if DEBUG
    return i == UInt8(ascii: s)
    #else
    return i == UInt8(ifASCII: s)
    #endif
  }
  
  /// Returns a Boolean value indicating whether the optional `UInt8` is not equal to the provided Unicode scalar.
  @_transparent
  public static func != (i: Self, s: Unicode.Scalar) -> Bool {
    #if DEBUG
    return i != UInt8(ascii: s)
    #else
    return i != UInt8(ifASCII: s)
    #endif
  }
  
  /// Allows pattern matching of Unicode scalars in switch statements.
  @_transparent
  public static func ~= (s: Unicode.Scalar, i: Self) -> Bool {
    #if DEBUG
    return i == UInt8(ascii: s)
    #else
    return i == UInt8(ifASCII: s)
    #endif
  }
}
