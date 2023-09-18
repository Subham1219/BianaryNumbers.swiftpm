import SwiftUI

struct DecimalToHexadecimal: View {
    @State private var decimalInput = ""
    @State private var hexadecimalResult = ""

    var body: some View {
        VStack {
            Text("Decimal to Hexadecimal Converter")
                .font(.title)
                .padding()

            TextField("Enter a decimal number", text: $decimalInput)
                .padding()
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: convertToHexadecimal) {
                Text("Convert")
            }
            .padding()

            Text("Hexadecimal Result: \(hexadecimalResult)")
                .padding()
        }
        .padding()
    }

    func convertToHexadecimal() {
        if let decimalValue = Int(decimalInput) {
            hexadecimalResult = String(decimalValue, radix: 16).uppercased()
        } else {
            hexadecimalResult = "Invalid input"
        }
    }
}
