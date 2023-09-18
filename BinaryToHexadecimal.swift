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
        guard let binaryNumber = Int(binaryInput, radix: 2) else {
            hexadecimalOutput = "Invalid binary input!"
            return
        }
        
        hexadecimalOutput = String(binaryNumber, radix: 16).uppercased()
    }
}
