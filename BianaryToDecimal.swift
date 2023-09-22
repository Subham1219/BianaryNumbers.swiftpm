//
//  BianaryToDecimal.swift
//  BianaryNumbers
//
//  Created by Subham Pathak on 9/18/23.
//

import SwiftUI

struct BinaryToDecimal: View {
    @State private var binaryInput = ""
    @State private var decimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Binary to Decimal Converter")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter Binary Number", text: $binaryInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                convertBinaryToDecimal()
            }) {
                Text("Convert")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Decimal: \(decimalOutput)")
                .font(.headline)
                .padding()
        }
        .padding()
    }
    
    func convertBinaryToDecimal() {
           let binaryString = binaryInput.trimmingCharacters(in: .whitespacesAndNewlines)
           let binaryArray = binaryString.map { String($0) }
           
           var decimalValue = 0
           var exponent = binaryArray.count - 1
           
           for digit in binaryArray {
               if let binaryDigit = Int(digit) {
                   decimalValue += binaryDigit * Int(pow(2.0, Double(exponent)))
                   exponent -= 1
               } else {
                   decimalOutput = "Invalid Input"
                   return
               }
           }
           
           decimalOutput = "\(decimalValue)"
       }
   }

