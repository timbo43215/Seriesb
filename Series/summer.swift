//
//  summer.swift
//  Series
//
//  Created by IIT PHYS 440 on 1/30/23.
//

import Foundation

func s1(n: Int) -> Int {
    return pow(-1, n) * (n/(n + 1))
        
}

func sumofs1(from start: Int, to end: Int, step: Int) -> Int {
    var result = 0.0
    for n in stride(from: start, to: end, by: step) {
        result += s1(n: Int(n))
    }
    return result
}

let start = 0.0
let end = 10.0
let step = 0.1
let result = sumofs1(from: start, to: end, step: step)
print(result)
