//
//  UIButton.swift
//  UIButton
//
//  Created by Yunus emre cihan on 27.05.2024.
//

import SwiftUI

struct UIButton: View {
    @State var isEnabled: Bool = false
    var body: some View {
        VStack {
            Button(action: {
                print("Butona  tıklandı")
                isEnabled.toggle()
            }) {
                Text("Ana Düğme")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
            Button(action:{
                isEnabled.toggle()
            }){
                Text(isEnabled ? "Ek düğme etkin":"Ek düğme devre dışı")
                    .padding()
                    .background(isEnabled ? Color.green : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            .disabled(!isEnabled)
            
           
        }
    }
}

#Preview {
    UIButton()
}
