import SwiftUI

struct NumberConverterView: View {
    @State private var decimalInput = ""
    @State private var binaryResult = ""
    @State private var hexadecimalResult = ""
    @State private var decimalResult = ""
    @State private var binaryInput = ""
    @State private var hexadecimalInput = ""

    var body: some View {
        VStack {
            Text("Number Converter")
                .font(.title)
                .padding()

            // Decimal to Binary
            Section(header: Text("Decimal to Binary")) {
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

            // Binary to Decimal
            Section(header: Text("Binary to Decimal")) {
                TextField("Enter a binary number", text: $binaryInput)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: convertToDecimal) {
                    Text("Convert")
                }
                .padding()

                Text("Decimal Result: \(decimalResult)")
                    .padding()
            }

            // Decimal to Hexadecimal
            Section(header: Text("Decimal to Hexadecimal")) {
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

            // Hexadecimal to Decimal
            Section(header: Text("Hexadecimal to Decimal")) {
                TextField("Enter a hexadecimal number", text: $hexadecimalInput)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: convertHexadecimalToDecimal) {
                    Text("Convert")
                }
                .padding()

                Text("Decimal Result: \(decimalResult)")
                    .padding()
            }

            // Binary to Hexadecimal
            Section(header: Text("Binary to Hexadecimal")) {
                TextField("Enter a binary number", text: $binaryInput)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: convertBinaryToHexadecimal) {
                    Text("Convert")
                }
                .padding()

                Text("Hexadecimal Result: \(hexadecimalResult)")
                    .padding()
            }

            // Hexadecimal to Binary
            Section(header: Text("Hexadecimal to Binary")) {
                TextField("Enter a hexadecimal number", text: $hexadecimalInput)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())

                Button(action: convertHexadecimalToBinary) {
                    Text("Convert")
                }
                .padding()

                Text("Binary Result: \(binaryResult)")
                    .padding()
            }
        }
        .padding()
    }

    // Conversion Functions
    func convertToBinary() {
        if let decimalValue = Int(decimalInput) {
            binaryResult = String(decimalValue, radix: 2)
        } else {
            binaryResult = "Invalid input"
        }
    }

    func convertToDecimal() {
        if let binaryValue = Int(binaryInput, radix: 2) {
            decimalResult = "\(binaryValue)"
        } else {
            decimalResult = "Invalid input"
        }
    }

    func convertToHexadecimal() {
        if let decimalValue = Int(decimalInput) {
            hexadecimalResult = String(decimalValue, radix: 16).uppercased()
        } else {
            hexadecimalResult = "Invalid input"
        }
    }

    func convertHexadecimalToDecimal() {
        if let hexValue = Int(hexadecimalInput, radix: 16) {
            decimalResult = "\(hexValue)"
        } else {
            decimalResult = "Invalid input"
        }
    }

    func convertBinaryToHexadecimal() {
        if let binaryValue = Int(binaryInput, radix: 2) {
            hexadecimalResult = String(binaryValue, radix: 16).uppercased()
        } else {
            hexadecimalResult = "Invalid input"
        }
    }

    func convertHexadecimalToBinary() {
        if let hexValue = Int(hexadecimalInput, radix: 16) {
            binaryResult = String(hexValue, radix: 2)
        } else {
            binaryResult = "Invalid input"
        }
    }
}
