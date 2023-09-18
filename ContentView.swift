import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: DecimalToBinaryView()) {
                    Text("Decimal to Binary")
                }
                NavigationLink(destination: BinaryToDecimalView()) {
                    Text("Binary to Decimal")
                }
                NavigationLink(destination: DecimalToHexadecimalView()) {
                    Text("Decimal to Hexadecimal")
                }
                NavigationLink(destination: HexadecimalToDecimalView()) {
                    Text("Hexadecimal to Decimal")
                }
                NavigationLink(destination: BinaryToHexadecimalView()) {
                    Text("Binary to Hexadecimal")
                }
                NavigationLink(destination: HexadecimalToBinaryView()) {
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
