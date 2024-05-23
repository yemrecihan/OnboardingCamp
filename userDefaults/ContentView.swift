//
//  ContentView.swift
//  userDefaults
//
//  Created by Yunus emre cihan on 21.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State  var hasVisited: Bool = UserDefaults.standard.bool(forKey: "hasVisited")
     @State var visitCount: Int = UserDefaults.standard.integer(forKey: "visitCount")
     @State var placeName: String = UserDefaults.standard.string(forKey: "placeName") ?? ""
    var body: some View {
        VStack (spacing:20){
            Toggle("Bu yere daha önce gittiniz mi ?" , isOn:$hasVisited)
                .onChange(of:hasVisited) {
                    value in UserDefaults.standard.setValue(value, forKey: "hasVisited")
                }
            Stepper("Bu yeri kaç kez ziyaret ettiniz? \(visitCount)",value: $visitCount).onChange(of:visitCount) {
                value in UserDefaults.standard.set(value,forKey: "visitCount")
                
                TextField("Ziyaret etmek istediğiniz yerin adı nedir ?", text:$placeName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: placeName, perform: { value in
                        UserDefaults.standard.set(value,forKey: "placeName")
                    })
                
                Text("Kadedilen Bilgiler:")
                Text("Bu yere daha önce gittiniz mi?\(hasVisited ? "Evet":"Hayır")")
                Text("Bu yeri kaç kez ziyaret ettiniz? \(visitCount)")
                Text("Bu yeri kaç kez ziyaret ettiniz? \(placeName)")
                
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
