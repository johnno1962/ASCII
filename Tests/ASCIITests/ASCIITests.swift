import XCTest
@testable import ASCII
@testable import ImplicitASCII

final class ASCIITests: XCTestCase {
    func testExample() throws {
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
      
      let c = UInt8(ascii: "c")
      XCTAssertEqual("c", c.ascii)
      
      switch c {
      case "a":
        XCTFail()
      default:
        break
      }
    }
}
