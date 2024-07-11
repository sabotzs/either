//
// EitherComparableTests.swift
// Georgi Kuklev on 11.07.2024

import Testing
@testable import Either

@Suite("Either+Comparable")
struct name {
    @Test func leftComparesLessThan() async throws {
        let first: Either<Int, Double> = .left(10)
        let second: Either<Int, Double> = .left(19)
        #expect(first < second)
    }

    @Test func leftComparesGreaterThan() async throws {
        let first: Either<Int, Double> = .left(19)
        let second: Either<Int, Double> = .left(15)
        #expect(first > second)
    }

    @Test func leftComparesLessThanOrEqual() async throws {
        let first: Either<Int, Double> = .left(15)
        let second: Either<Int, Double> = .left(15)
        #expect(first <= second)
    }

    @Test func leftComparesGreaterThanOrEqual() async throws {
        let first: Either<Int, Double> = .left(15)
        let second: Either<Int, Double> = .left(15)
        #expect(first >= second)
    }

    @Test func rightComparesLessThan() async throws {
        let first: Either<Int, Double> = .right(1.11)
        let second: Either<Int, Double> = .right(2.22)
        #expect(first < second)
    }

    @Test func rightComparesGreaterThan() async throws {
        let first: Either<Int, Double> = .right(2.22)
        let second: Either<Int, Double> = .right(2.0)
        #expect(first > second)
    }

    @Test func rightComparesLessThanOrEqual() async throws {
        let first: Either<Int, Double> = .right(2.0)
        let second: Either<Int, Double> = .right(2.0)
        #expect(first <= second)
    }

    @Test func rightComparesGreaterThanOrEqual() async throws {
        let first: Either<Int, Double> = .right(2.0)
        let second: Either<Int, Double> = .right(2.0)
        #expect(first >= second)
    }

    @Test func leftIsLessThanRight() async throws {
        let first: Either<Int, Int> = .left(20)
        let second: Either<Int, Int> = .right(10)
        #expect(first < second)
    }

    @Test func rightIsGreaterThanLeft() async throws {
        let first: Either<Int, Int> = .left(20)
        let second: Either<Int, Int> = .right(10)
        #expect(second > first)
    }

    @Test func leftAndRightAreNotEqual() async throws {
        let first: Either<Int, Int> = .left(10)
        let second: Either<Int, Int> = .right(10)
        #expect(first <= second && !(first >= second))
    }
}
