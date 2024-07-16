//
// Either+Comparable.swift
// Either
//
// Created by sabotzs on 11.07.2024
//

extension Either: Comparable where Left: Comparable, Right: Comparable {
    public static func < (_ lhs: Self, _ rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case let (.left(l), .left(r)):
            return l < r
        case let (.right(l), .right(r)):
            return l < r
        case (.left, .right):
            return true
        case (.right, .left):
            return false
        }
    }
}