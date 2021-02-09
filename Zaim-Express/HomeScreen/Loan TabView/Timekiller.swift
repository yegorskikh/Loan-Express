//
//  Timekiller.swift
//  Zaim-Express
//
//  Created by Егор Горских on 26.01.2021.
//

import SwiftUI

struct Timekiller: View {
    
    var body: some View {
        
        VStack {
            Text("Проверяем...")
                .font(.system(size: 20))
                .fontWeight(.bold)
                
            Text("Минутку. Сейчас мы проверим данные и примем решение.")
                .font(.system(size: 14))
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.horizontal, 61.0)
                .padding(.top, 14)
            
            Image("orange")
                .padding(.horizontal, 72.0)
                .padding(.top, 50.0)
                .padding(.bottom, 100.0)
            
            Spacer()
            
            NavigationLink(destination: NegativeView() ) {
                Text("Узнать решение")
            }
            .frame(width: 350, height: 50, alignment: .center)
            .foregroundColor(.white)
            .background(Color.orange)
            .cornerRadius(10)
            .padding(.bottom, 30)
                
        }
        .navigationBarBackButtonHidden(true)
    }
    
    
}

struct Timekiller_Previews: PreviewProvider {
    static var previews: some View {
        Timekiller()
    }
}
