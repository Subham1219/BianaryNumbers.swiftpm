import SwiftUI

struct DecimalToBinary: View {
    @State private var decimalInput = ""
    @State private var binaryOutput = ""
    @State private var binaryResult = ""

    var body: some View {
        VStack {
            Text("Decimal to Binary Converter")
                .font(.title)
                .padding()

            TextField("Enter a decimal number", text: $decimalInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: convertToBinary) {
                Text("Convert")
            }
            .padding()

            Text("Binary Result: \(binaryResult)")
                .padding()
        }
        .padding()
    }

    func convertToBinary() {
            if let decimalNumber = Int(decimalInput) {
                var binaryString = ""
                var num = decimalNumber
                
                if num == 0 {
                    binaryString = "0"
                } else {
                    while num > 0 {
                        let remainder = num % 2
                        binaryString = String(remainder) + binaryString
                        num /= 2
                    }
                }
                
                binaryOutput = binaryString
            } else {
                binaryOutput = "Invalid Input"
            }
        }
}
