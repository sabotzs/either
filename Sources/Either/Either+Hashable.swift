//
// Either+Hashable.swift
// Either
//
// Created by sabotzs on 11.07.2024
//

extension Either: Hashable where Left: Hashable, Right: Hashable {
    public func hash(into hasher: inout Hasher) {
        switch self {
        case let .left(left):
            hasher.combine("left") // Add "left" to represent left
            hasher.combine(left)
        case let .right(right):
            hasher.combine("right") // Add "right" to represent right
            hasher.combine(right)
        }
    }
}