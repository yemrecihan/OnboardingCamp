//
//  shakeButton.swift
//  UIButton
//
//  Created by Yunus emre cihan on 27.05.2024.
//

import SwiftUI

struct shakeButton: View {
    @State var isPressed : Bool = false
    @State var shakeAmount : CGFloat = 0
    let shakeDuration: Double = 0.5
    let animationDistance: CGFloat = 10
    var body: some View {
        Button( action: {
            withAnimation(Animation.default.repeatCount(3).speed(shakeDuration)) {
                self.shakeAmount = animationDistance
                isPressed.toggle()
            }
        })  {
            Text("Shake Button")
                .padding()
                .background(isPressed ? Color.yellow : Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .shadow (radius: isPressed ? 10 : 0)
                .offset(x: 0, y: shakeAmount)
        }
        .onLongPressGesture {
            isPressed.toggle()
        }
    }
}

#Preview {
    shakeButton()
}
