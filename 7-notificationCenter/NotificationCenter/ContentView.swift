import SwiftUI

struct ContentView: View {
    @State var decryptedMessage = "Decoding..."
    @State var isDecryptionStarted = false
    @State var countdown = 15
    @State var showAlert = false
    @State var code = ""
    @State var timer : Timer? = nil

    var body: some View {
        VStack(spacing: 20) {
            Text("Decryption application")
                .font(.largeTitle)
                .padding()
            Text(decryptedMessage)
                .font(.title)
                .padding()
            if isDecryptionStarted {
                Text("Countdown: \(countdown) seconds")
                    .font(.headline)
                    .padding()
            }
            Button("Decrypt") {
                showAlert = true
            }
        }
        .textFieldAlert(isPresented: $showAlert, text: $code) {
            startDecryptionProcess()
        }
        .onReceive(NotificationCenter.default.publisher(for: .decryptionComplete)) { notification in
            if let userInfo = notification.userInfo,
               let message = userInfo["message"] as? String {
                decryptedMessage = message
            }
        }
    }

    func startDecryptionProcess() {
        if code == "1234" {
            isDecryptionStarted = true
            countdown = 15
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { _ in
                if countdown > 0 {
                    countdown -= 1
                } else {
                    timer?.invalidate()
                    NotificationCenter.default.post(name: .decryptionComplete, object: nil, userInfo: ["message": "Decrypted message"])
                }
            }
        } else {
            decryptedMessage = "You have entered the wrong code"
        }
    }
}

extension Notification.Name {
    static let decryptionComplete = Notification.Name("decryptionComplete")
}

#Preview {
    ContentView()
}

// Custom Alert with TextField
extension View {
    func textFieldAlert(isPresented: Binding<Bool>, text: Binding<String>, action: @escaping () -> Void) -> some View {
        TextFieldAlert(isPresented: isPresented, text: text, action: action, presentingView: self)
    }
}

struct TextFieldAlert<PresentingView: View>: View {
    @Binding var isPresented: Bool
    @Binding var text: String
    let action: () -> Void
    let presentingView: PresentingView

    var body: some View {
        ZStack {
            if isPresented {
                presentingView
                    .blur(radius: 3)
                VStack {
                    Text("Enter Code")
                        .font(.headline)
                    TextField("Code", text: $text)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    HStack {
                        Button("Cancel") {
                            isPresented = false
                        }
                        .padding()
                        Spacer()
                        Button("Confirm") {
                            isPresented = false
                            action()
                        }
                        .padding()
                    }
                }
                .frame(width: 300, height: 200)
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 20)
            } else {
                presentingView
            }
        }
    }
}

