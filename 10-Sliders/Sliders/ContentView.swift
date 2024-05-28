import SwiftUI

struct ContentView: View {
    
    @State var sliderValue: Double = 0.5
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "leaf.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.green)
                
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.green,.red]), startPoint: .leading, endPoint: .trailing)
                        .frame(height: 5)
                    
                    Slider(value: $sliderValue)
                        .padding()
                        .accentColor(.clear) // Thumb rengini temizle
                        .background(Color.clear)
                }
                
                Image(systemName: "flame.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.red)
            }
            .padding()
            
            Text("Dragon Power: \(sliderValue, specifier: "%.2f")")
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

