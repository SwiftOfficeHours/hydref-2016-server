import XCTest
@testable import hydref_2016_server

class hydref_2016_serverTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertEqual(hydref_2016_server().text, "Hello, World!")
    }


    static var allTests : [(String, (hydref_2016_serverTests) -> () throws -> Void)] {
        return [
            ("testExample", testExample),
        ]
    }
}
