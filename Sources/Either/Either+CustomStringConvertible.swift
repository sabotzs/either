//
// Either+CustomStringConvertible.swift
// Either
//
// Created by sabotzs on 16.07.2024
//

extension Either: CustomStringConvertible where Left: CustomStringConvertible, Right: CustomStringConvertible {
    public var description: String {
        switch self {
        case let .left(l):
            return l.description
        case let .right(r):
            return r.description
        }
    }
}
