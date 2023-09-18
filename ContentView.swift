import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DecimalToBinary()) {
                    Text("Decimal to Binary")
                }
                NavigationLink(destination: BinaryToDecimalView()) {
                    Text("Binary to Decimal")
                }
                NavigationLink(destination: DecimalToHexadecimal()) {
                    Text("Decimal to Hexadecimal")
                }
                NavigationLink(destination: HexadecimalToDecimal()) {
                    Text("Hexadecimal to Decimal")
                }
                NavigationLink(destination: BinaryToHexadecimalView()) {
                    Text("Binary to Hexadecimal")
                }
                NavigationLink(destination: HexadecimalToBinary()) {
                    Text("Hexadecimal to Binary")
                }
            }
            .navigationBarTitle("Number Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
