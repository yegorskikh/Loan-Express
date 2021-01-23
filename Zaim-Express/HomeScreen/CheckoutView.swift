//
//  ContentView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI

struct CheckoutView: View {
    
    @State var loanAmount: Double = 15000
    @State var term: Double = 15
    @State var refundAmount = "XX XXX"
    @State var returnDay = "XX месяц XXXX г"
    
    @State private var isActivate1: Bool = false
    @State private var isActivate2: Bool = false
    
    var body: some View {
        TabView {
            NavigationView {
                VStack  {
                    HStack {
                        Text("Сумма займа")
                        Spacer()
                        Text("\(Int(loanAmount)) руб.")
                            .bold()
                    }
                    .padding(10)
                    
                    Slider(value: $loanAmount, in: 1000...30000, step: 1)
                        .padding(.horizontal, 10.0)
                        .accentColor(.green)
                    
                    HStack {
                        Text("1000 руб")
                        Spacer()
                        Text("30 000 руб")
                    }
                    .padding(.horizontal, 10.0)
                    .padding(.bottom, 30)
                    
                    HStack {
                        Text("Срок")
                        Spacer(minLength: 100)
                        Text("\(Int(term)) дней")
                            .bold()
                    }
                    .padding(.horizontal, 10.0)
                    
                    Slider(value: $term, in: 7...30, step: 1)
                        .padding(.horizontal, 10.0)
                        .accentColor(.green)
                    HStack {
                        Text("7 дней")
                        Spacer()
                        Text("30 дней")
                    }
                    .padding(.horizontal, 10.0)
                    
                    VStack {
                        Text("\(returnDay).")
                        Text("Вы возращаете \(refundAmount) руб.")
                    }
                    .frame(width: 1000, height: 100.0)
                    .background(Color.gray.opacity(0.1))
                    .padding()
                    
                    VStack {
                        
                        HStack {
                            CheckBoxView(isChecked: $isActivate1)
                                .foregroundColor(.green)
                            VStack {  // << any container
                                Text("Даю свое").foregroundColor(.clear) +
                                    Text(" Согласие на обработку персональных данных").foregroundColor(.green)
                            }
                            .onTapGesture {          // allowed tap
                                
                                print(">> tapped Согласие на обработку персональных данных")
                                
                            }
                            .overlay(
                                Text("Даю свое").contentShape(Rectangle())
                                    .onTapGesture {  },                   // << blocked !!
                                alignment: .topLeading)
                            .font(.system(size: 10))
                            Spacer()
                        }
                        .padding(.bottom, 1.0)
                        
                        HStack {
                            CheckBoxView(isChecked: $isActivate2)
                                .foregroundColor(.green)
                            Text("Прошу предоставить мне займ").foregroundColor(.green)
                                .onTapGesture {
                                    print(">> tapped Прошу предоставить мне займх")
                                }
                                .font(.system(size: 10))
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                        .padding(.bottom, 5.0)
                        
                        Button(action: {
                            
                            // ...
                            print(">> tapped Получить займ")
                            
                        }) {
                            Text("Получить деньги")
                        }
                        .disabled(!isActivate1)
                        .disabled(!isActivate2)
                        .frame(width: 350, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.orange)
                        .cornerRadius(10)
                        
                    }
                    .padding()
                }
                .navigationTitle("Оформить займ")
            }
            .padding()
            
            // 
            .tabItem {
                Image(systemName: "applescript")
                Text("Оформить")
                    
            }
            
        }
        
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            CheckoutView()
        }
    }
    
}


