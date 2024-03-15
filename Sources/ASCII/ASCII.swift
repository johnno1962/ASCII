// The Swift Programming Language
// https://docs.swift.org/swift-book

/// Converts a UInt8 value into a UnicodeScalar
extension UInt8 {
  @_transparent
  public var ascii: Unicode.Scalar? {
    guard self < 128 else { return nil }
    return Unicode.Scalar(self)
  }
}

/// Extends `FixedWidthInteger` providing initialization from a Unicode scalar.
extension FixedWidthInteger {
  /// Initializes a FixedWidthInteger with the value of the provided Unicode scalar.
  ///
  /// - Parameter unicode: The Unicode scalar to initialize from.
  /// - Note: Construct with value `v.value`.
  @inlinable @_alwaysEmitIntoClient
  public init?(unicode v: Unicode.Scalar) {
    guard v.value <= Self.max else {
      #if DEBUG
      fatalError("Code point value does not fit into \(Self.self)")
      #else
      return nil
      #endif
    }
    self = Self(v.value)
  }
}
