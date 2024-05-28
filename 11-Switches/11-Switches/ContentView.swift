import SwiftUI

struct ContentView: View {
    
    @State private var isSwitchOn = false
    
    var body: some View {
        VStack {
            Circle()
                .fill(isSwitchOn ? Color.green : Color.red)
                .frame(width: 200, height: 200)
                .overlay(
                    Text(isSwitchOn ? "Open" : "Close")
                        .foregroundColor(.white)
                )
            
            
            Toggle("On/Off", isOn: $isSwitchOn)
                .padding()
                .foregroundColor(.black)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
