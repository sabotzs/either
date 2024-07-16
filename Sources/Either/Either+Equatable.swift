//
// Either+Equatable.swift
// Either
//
// Created by sabotzs on 11.07.2024
//

extension Either: Equatable where Left: Equatable, Right: Equatable {
    public static func == (_ lhs: Self, _ rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.left(l), .left(r)):
            return l == r
        case let (.right(l), .right(r)):
            return l == r
        default:
            return false
        }
    }
}
