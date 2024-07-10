// The Swift Programming Language
// https://docs.swift.org/swift-book

public enum Either<Left, Right> {
    case left(Left)
    case right(Right)
}
