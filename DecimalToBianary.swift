import SwiftUI

struct DecimalToBinary: View {
    @State private var decimalInput = ""
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
        if let decimalValue = Int(decimalInput) {
            binaryResult = String(decimalValue, radix: 2)
        } else {
            binaryResult = "Invalid input"
        }
    }
}
