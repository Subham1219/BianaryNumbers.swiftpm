import SwiftUI

struct HexadecimalToBinary: View {
    @State private var hexadecimalInput = ""
    @State private var binaryResult = ""

    var body: some View {
        VStack {
            Text("Hexadecimal to Binary Converter")
                .font(.title)
                .padding()

            TextField("Enter a hexadecimal number", text: $hexadecimalInput)
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
        if let hexValue = Int(hexadecimalInput, radix: 16) {
            binaryResult = String(hexValue, radix: 2)
        } else {
            binaryResult = "Invalid input"
        }
    }
}
