//
// EitherEquatableTests.swift
// EitherTests
//
// Created by sabotzs on 16.07.2024
//

import Testing
@testable import Either

@Suite("Either+Equatable")
struct EitherEquatableTests {
    @Test func sameLeftValuesAreEqual() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .left("hello")
        #expect(left == right)
    }

    @Test func differentLeftValuesAreNotEqual() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .left("Hello")
        #expect(left != right)
    }

    @Test func sameRightValuesAreEqual() async throws {
        let left: Either<String, Int> = .right(10)
        let right: Either<String, Int> = .right(10)
        #expect(left == right)
    }

    @Test func differentRightValuesAreNotEqual() async throws {
        let left: Either<String, Int> = .right(10)
        let right: Either<String, Int> = .right(100)
        #expect(left != right)
    }

    @Test func differentCasesAreNotEqual() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .right(100)
        #expect(left != right)
    }
}