//
//  ContentView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI


struct ContentView: View {
    
    @State var loanAmount: Double = 15000
    @State var term: Double = 15
    @State var refundAmount = "X"
    @State var returnDay = "XX.XX.XXXX"
    
    let checkBox1 = CheckBoxView()
    let checkBox2 = CheckBoxView()
    
    
    var body: some View {
        
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
                        checkBox1
                            .foregroundColor(.green)
                        Text("Даю свое Согласие на обработку персональных данных")
                            .font(.system(size: 10))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.bottom, 1.0)
                    HStack {
                        checkBox2
                            .foregroundColor(.green)
                        Text("Прошу предоставить мне займ, подлинность предоставленных данных подтверждаю, и с Информацией об условиях предостовления, использования, использования и возврата потребитеьского займа, c Общими условаиями договора потребительского займа и Соглашением об использовании АСП ознакомлен и полностью согласен")
                            .font(.system(size: 10))
                            .multilineTextAlignment(.leading)
                        Spacer()
                    }
                    .padding(.bottom, 5.0)
                    Button(action: {
                        // ...
                    }) {
                        Text("Получить деньги")
                    }
                    .frame(width: 350, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.orange)
                    .cornerRadius(10)
                    
                }
                .padding()
                
            }
            .navigationTitle("Оформить займ")
        }
        .padding()
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
