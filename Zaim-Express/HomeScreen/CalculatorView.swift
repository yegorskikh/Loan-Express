//
//  ContentView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI

struct CalculatorView: View {
    
    @State var loanAmount: Double = 15000
    @State var term: Double = 18
    @State var refundAmount = "XX XXX"
    @State var returnDay = "XX месяц XXXX г"
    
    @State private var isActivate1: Bool = false
    @State private var isActivate2: Bool = false
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        
        NavigationView {
            VStack  {
                HStack {
                    Text("Сумма займа")
                        .font(.system(size: 14))
                    
                    Spacer()
                    Text("\(Int(loanAmount)) руб.")
                        .bold()
                        .font(.system(size: 25))
                        
                }
                .padding(10)
                
                Slider(value: $loanAmount, in: 1000...30000, step: 1)
                    .padding(.horizontal, 10.0)
                    .accentColor(.green)
                
                HStack {
                    Text("1000 руб")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("30 000 руб")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                }
                .padding(.horizontal, 10.0)
                .padding(.bottom, 30)
                
                HStack {
                    Text("Срок")
                        .font(.system(size: 14))
                    Spacer(minLength: 100)
                    Text("\(Int(term)) дней")
                        .font(.system(size: 25))
                        .bold()
                }
                .padding(.horizontal, 10.0)
                
                Slider(value: $term, in: 7...30, step: 1)
                    .padding(.horizontal, 10.0)
                    .accentColor(.green)
                HStack {
                    Text("7 дней")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
                    Spacer()
                    Text("30 дней")
                        .font(.system(size: 13))
                        .foregroundColor(Color.gray)
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
                        VStack {
                            Text("Даю свое").foregroundColor(.clear) +
                                Text(" Согласие на обработку персональных данных").foregroundColor(.green)
                        }
                        .onTapGesture {
                            
                            print(">> tapped Согласие на обработку персональных данных")
                            
                        }
                        .overlay(
                            Text("Даю свое").contentShape(Rectangle())
                                .onTapGesture {  },
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
                    
                    
                    
                    
                    NavigationLink(destination: Timekiller() ) {
                        Text("Получить деньги")
                    }
                    .disabled(!isActivate1)
                    .disabled(!isActivate2)
                    .frame(width: 350, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
                    .padding(.top, 104)
                    .padding(.bottom, 40)
                    // TODO: Button
                }
                .padding()
                
                
            }
           
        }
        .navigationBarTitle("Оформить займ", displayMode: .inline)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: CustomBackButton {
            presentationMode.wrappedValue.dismiss()
                    })
    }
    
}



    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            CalculatorView()
        }
    }




