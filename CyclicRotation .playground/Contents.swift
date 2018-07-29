//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    guard A.count > 0 else {
        return A
    }
    var array = A
    let number = K % A.count
    reverse(A: &array, start: 0, end: A.count - 1)
    reverse(A: &array, start: 0, end: number - 1 )
    reverse(A: &array, start: number, end:  A.count - 1 )
    
    return array
}

func reverse(A: inout [Int], start: Int, end: Int) {
    var i = start
    var j = end
    while i != j, i < j {
        swap(&A[i], &A[j])
        i += 1
        j -= 1
    }
}

var testList = [3, 8, 9, 7, 6]
solution(&testList, 3)

// print("this is a debug message")

