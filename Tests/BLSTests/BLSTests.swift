import XCTest
@testable import BLS

final class BLSTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(BLS().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
