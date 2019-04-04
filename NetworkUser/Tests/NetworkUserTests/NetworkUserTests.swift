import XCTest
@testable import NetworkUser
import Network

final class NetworkUserTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(NetworkUser().s.text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
