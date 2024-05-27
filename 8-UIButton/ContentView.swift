//
//  ContentView.swift
//  UIButton
//
//  Created by Yunus emre cihan on 25.05.2024.
//

import SwiftUI




struct ContentView: View {
    
    @State var isPressed: Bool = false
    
    var body: some View {
        ZStack {
            VStack {
                Menu {
                    Button("Alert") {
                        //Seçenek 1 eylem
                    }
                    Button("Help") {
                        //Seçenek 2 eylem
                    }
                } label: {
                    Text("Options")
                        .padding()
                        .background(Color.yellow)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .contentShape(Rectangle())
                    
                }
                
                .padding(.bottom,50)
                
                
                Button(action: {
                    showDailySpecials()
                })  {
                    Text("Daily Specials")
                        .font(.system(size: 20))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                        .background(
                            Image("aaa")//Kendi image ismini koy
                                .resizable()
                                .scaledToFill()
                        )
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.blue,lineWidth: 2)
                        )
                        .shadow(radius: 10)
                        .opacity(0.5)
                }
                .frame(height: 50)
                .background(Color.red)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.blue,lineWidth: 2)
                )
                Spacer()
            }
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    Button(action: {
                        changeOfBackground()
                                        }) {
                                            Text("colorrrrr")
                                                .font(.system(size: 10))
                                                .padding()
                                                .background(isPressed ? Color.yellow : Color.blue)
                                                .foregroundColor(.white)
                                                .cornerRadius(8)
                                                .onLongPressGesture (minimumDuration: .infinity, pressing : { isPressing in withAnimation {
                                                    isPressed = isPressing
                                                }
                                                    
                                                }, perform: {})
                                        }
                                        .padding()
                }
                
                
                
                
            }
            
                        }
            .padding()
           
        
        }
        
    func showDailySpecials () {
        print("Günlük spesiyaller gösteriliyor")
    }
    func changeOfBackground () {
        print ("Arka plan rengi değişti..")
    }
}

#Preview {
    ContentView()
}
