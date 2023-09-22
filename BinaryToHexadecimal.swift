//
//  BinaryToHexadecimal.swift
//  BianaryNumbers
//
//  Created by Rahul A. Basu on 9/18/23.
//

import Foundation
import SwiftUI

struct BinaryToHexadecimal: View {
    @State private var binaryInput = ""
    @State private var hexadecimalOutput = ""
    
    var body: some View {
        VStack {
            Text("Binary to Hexadecimal Converter")
                .font(.largeTitle)
                .padding()
            
            TextField("Enter Binary Number", text: $binaryInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {
                convertBinaryToHex()
            }) {
                Text("Convert")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Text("Hexadecimal: \(hexadecimalOutput)")
                .font(.headline)
                .padding()
        }
        .padding()
    }
    
    func convertBinaryToHex() {
           let binaryString = binaryInput.trimmingCharacters(in: .whitespacesAndNewlines)
           let binaryArray = binaryString.map { String($0) }
           
           var decimalValue = 0
           var exponent = binaryArray.count - 1
           
           for digit in binaryArray {
               if let binaryDigit = Int(digit) {
                   decimalValue += binaryDigit * Int(pow(2.0, Double(exponent)))
                   exponent -= 1
               } else {
                   hexadecimalOutput = "Invalid Input"
                   return
               }
           }
           
           let hexadecimalString = String(format: "%X", decimalValue)
           hexadecimalOutput = hexadecimalString
       }
   }

