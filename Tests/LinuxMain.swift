import XCTest

import PacketStreamTests

var tests = [XCTestCaseEntry]()
tests += PacketStreamTests.allTests()
XCTMain(tests)
