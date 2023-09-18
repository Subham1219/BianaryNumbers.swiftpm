import SwiftUI

struct HexadecimalToDecimal: View {
    @State private var hexadecimalInput = ""
    @State private var decimalResult = ""

    var body: some View {
        VStack {
            Text("Hexadecimal to Decimal Converter")
                .font(.title)
                .padding()

            TextField("Enter a hexadecimal number", text: $hexadecimalInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: convertToDecimal) {
                Text("Convert")
            }
            .padding()

            Text("Decimal Result: \(decimalResult)")
                .padding()
        }
        .padding()
    }

    func convertToDecimal() {
        if let hexValue = Int(hexadecimalInput, radix: 16) {
            decimalResult = "\(hexValue)"
        } else {
            decimalResult = "Invalid input"
        }
    }
}
