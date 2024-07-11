//
// EitherHashableTests.swift
// Georgi Kuklev on 11.07.2024

import Testing
@testable import Either

@Suite("Either+Hashable")
struct EitherHashableTests {
    @Test func sameLeftValuesHaveSameHashValues() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .left("hello")
        #expect(left.hashValue == right.hashValue)
    }

    @Test func differentLeftValuesHaveDifferentHashValues() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .left("Hello")
        #expect(left.hashValue != right.hashValue)
    }

    @Test func sameRightValuesHaveSameHashValue() async throws {
        let left: Either<String, Int> = .right(1011)
        let right: Either<String, Int> = .right(1011)
        #expect(left.hashValue == right.hashValue)
    }

    @Test func differentRightValuesHaveDifferentHashValues() async throws {
        let left: Either<String, Int> = .right(1011)
        let right: Either<String, Int> = .right(1010)
        #expect(left.hashValue != right.hashValue)
    }

    @Test func differentCasesWithSameValuesHaveDifferentValues() async throws {
        let left: Either<Int, Int> = .left(1011)
        let right: Either<Int, Int> = .right(1011)
        #expect(left.hashValue != right.hashValue)
    }

    @Test func differentCasesWithDifferentValuesHaveDifferentHashValues() async throws {
        let left: Either<String, Int> = .left("hello")
        let right: Either<String, Int> = .right(1011)
        #expect(left.hashValue != right.hashValue)
    }
}