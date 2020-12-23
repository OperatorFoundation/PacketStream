import XCTest
@testable import PacketStream

final class PacketStreamTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PacketStream().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
