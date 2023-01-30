//
//  SumFunc.swift
//  Series
//
//  Created by IIT PHYS 440 on 2/3/23.
//

import Foundation
import SwiftUI

struct ContentView: View {
    @State private var N = ""
    @State private var n = 1

    var body: some View {
        VStack {
            TextField("Enter N", text: $N)
                .padding()
                .background(Color.gray)
                .cornerRadius(5.0)

            if let nInt = Int(N) {
                let sum = (1...nInt).reduce(0) { (result, next) in
                    result + next * next
                }

                Text("Sum of squares of first \(nInt) positive integers: \(sum)")
            } else {
                Text("Invalid input")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
