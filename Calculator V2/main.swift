//
//  main.swift
//  Calculator V2
//
//  Created by Quynh Huynh on 4/7/16.
//  Copyright © 2016 Quynh Huynh. All rights reserved.
//

import Foundation

// basic math functions
func add(one : Int, two : Int) -> Int {
    return one + two
}

func subtract(one : Int, two : Int) -> Int {
    return one - two
}

func multiply(one : Int, two : Int) -> Int {
    return one * two
}

func divide(one : Int, two : Int) -> Int {
    return one / two
}

// math takes two integers and a function and returns the 
// result of calling that function on both integers
func math(left : Int, right : Int, op : (Int, Int) -> Int) -> Int {
    return op(left, right)
}

// takes an array of integers and returns the sum of all values
func arrayAdd(list : [Int]) -> Int {
    var sum = 0
    for number in list {
        sum += number
    }
    return sum
}

// takes an array of integers and returns the result of multiplying
// all values together
func arrayMultiply(list : [Int]) -> Int {
    var result = 1
    for number in list {
        result *= number
    }
    return result
}

// takes an array and "array math" function
func arrayMath(list : [Int], op : ([Int]) -> Int) -> Int {
    return op(list)
}

// adds two points together
func addPoints(firstPoint : (Int, Int), secondPoint : (Int, Int)) -> (Int, Int) {
    return ((firstPoint.0 + secondPoint.0), (firstPoint.1 + secondPoint.1))
}

// subtracts two points
func subtractPoints(firstPoint : (Int, Int), secondPoint : (Int, Int)) -> (Int, Int) {
    return ((firstPoint.0 - secondPoint.0), (firstPoint.1 - secondPoint.1))
}

// takes two dictionary points and returns a dictionary of the sum
func addDictionaryPoints(firstPoint : Dictionary<String, Int>, secondPoint : Dictionary<String, Int>) -> Dictionary<String, Int> {
    let point = [
        "x": firstPoint["x"]! + secondPoint["x"]!,
        "y": firstPoint["y"]! + secondPoint["y"]!,
        ]
    return point
    
}

// takes two dictionary points and returns a dictionary of the difference
func subtractDictionaryPoints(firstPoint : Dictionary<String, Int>, secondPoint : Dictionary<String, Int>) -> Dictionary<String, Int> {
    let point = [
        "x": firstPoint["x"]! - secondPoint["x"]!,
        "y": firstPoint["y"]! - secondPoint["y"]!,
        ]
    return point
    
}

// takes two dictionary points and returns a dictionary of the sum
func addDictionaryDoublePoints(firstPoint : Dictionary<String, Double>, secondPoint : Dictionary<String, Double>) -> Dictionary<String, Double> {
    let point = [
        "x": firstPoint["x"]! + secondPoint["x"]!,
        "y": firstPoint["y"]! + secondPoint["y"]!,
        ]
    return point
    
}

// takes two dictionary points and returns a dictionary of the difference
func subtractDictionaryDoublePoints(firstPoint : Dictionary<String, Double>, secondPoint : Dictionary<String, Double>) -> Dictionary<String, Double> {
    let point = [
        "x": firstPoint["x"]! - secondPoint["x"]!,
        "y": firstPoint["y"]! - secondPoint["y"]!,
        ]
    return point
    
}
