//
// EitherCustomStringConvertibleTests.swift
// Either
//
// Created by sabotzs on 16.07.2024
//

import Testing
@testable import Either

@Suite("Either+CustomStringConvertbile")
struct EitherCustomStringConvertibleTests {
    @Test func testLeftDescription() async throws {
        let either: Either<Int, String> = .left(1001)
        let expected = "1001"
        #expect(either.description == expected)
    }

    @Test func testRightDescription() async throws {
        let text = "hello"
        let either: Either<Int, String> = .right(text)
        let expected = text
        #expect(either.description == expected)
    }
}
