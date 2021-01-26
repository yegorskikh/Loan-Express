//
//  NewLoanView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 25.01.2021.
//

import SwiftUI

struct NewLoanView: View {
    
    var body: some View {
        
 
        NavigationView {
            
            VStack {
                Text("У Вас нет текущих займов")
                    .font(.system(size: 20))
                    .padding(.top, 104)
                
                Text("Оформите заём и получите деньги")
                    .padding(.top, 14)
                Text("через 5 минут!")
                    .font(.system(size: 14))
                Spacer()
                
                NavigationLink(destination: CalculatorView()) {
                    Text("Оформить займ")
                }
                .frame(width: 350, height: 50, alignment: .center)
                .foregroundColor(.white)
                .background(Color.orange)
                .cornerRadius(10)
                .padding(.bottom, 40)
            }
            
            .navigationBarTitle("Мой займ")
        }
        
    }
}

struct NewLoanView_Previews: PreviewProvider {
    static var previews: some View {
        NewLoanView()
    }
}




