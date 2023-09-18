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
        guard let binaryNumber = Int(binaryInput, radix: 2) else {
            decimalOutput = "Invalid binary input!"
            return
        }
        decimalOutput = String(binaryNumber)
    }
}
