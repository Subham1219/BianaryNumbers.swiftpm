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
            var result = ""
            var value = decimalValue

            while value > 0 {
                let remainder = value % 16
                let digit: String

                if remainder < 10 {
                    digit = "\(remainder)"
                } else {
                    let unicodeScalarValue = Unicode.Scalar(55 + remainder)
                    digit = String(Character(unicodeScalarValue!))
                }

                result = digit + result
                value /= 16
            }

            hexadecimalResult = result.isEmpty ? "0" : result
        } else {
            hexadecimalResult = "Invalid input"
        }
    }
}

struct DecimalToHexadecimal_Previews: PreviewProvider {
    static var previews: some View {
        DecimalToHexadecimal()
    }
}
