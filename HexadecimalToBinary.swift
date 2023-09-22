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
        let hexDigits: [Character] = Array(hexadecimalInput.uppercased())
        var binaryString = ""

        for hexDigit in hexDigits {
            switch hexDigit {
            case "0": binaryString += "0000"
            case "1": binaryString += "0001"
            case "2": binaryString += "0010"
            case "3": binaryString += "0011"
            case "4": binaryString += "0100"
            case "5": binaryString += "0101"
            case "6": binaryString += "0110"
            case "7": binaryString += "0111"
            case "8": binaryString += "1000"
            case "9": binaryString += "1001"
            case "A": binaryString += "1010"
            case "B": binaryString += "1011"
            case "C": binaryString += "1100"
            case "D": binaryString += "1101"
            case "E": binaryString += "1110"
            case "F": binaryString += "1111"
            default:
                binaryResult = "Invalid input"
                return
            }
        }

        binaryResult = binaryString
    }
}
