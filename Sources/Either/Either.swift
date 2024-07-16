//
// Either.swift
// Either
//
// Created by sabotzs on 09.07.2024
//

public enum Either<Left, Right> {
    case left(Left)
    case right(Right)
}
