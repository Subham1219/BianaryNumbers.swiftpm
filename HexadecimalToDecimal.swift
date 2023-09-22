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
        let hexDigits: [Character] = Array(hexadecimalInput.uppercased())
        var decimalValue = 0

        for hexDigit in hexDigits {
            if let digitValue = hexDigit.hexDigitValue {
                decimalValue = decimalValue * 16 + digitValue
            } else {
                decimalResult = "Invalid input"
                return
            }
        }

        decimalResult = String(decimalValue)
    }
}

extension Character {
    var hexDigitValue: Int? {
        switch self {
        case "0"..."9": return Int(String(self))
        case "A"..."F": return Int(10 + self.unicodeScalars.first!.value - Unicode.Scalar("A").value)
        case "a"..."f": return Int(10 + self.unicodeScalars.first!.value - Unicode.Scalar("a").value)
        default: return nil
        }
    }
}
