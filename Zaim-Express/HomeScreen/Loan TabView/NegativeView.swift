//
//  NegativeView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 26.01.2021.
//

import SwiftUI

struct NegativeView: View {
    
    var body: some View {
        
        VStack {
            Image("no")
                
            Text("Заблокирован")
                .fontWeight(.bold)
                .padding(.top, 25.0)
                .font(.system(size: 20))
            
            Text("Подача заявки временно заблокирована. В займе отказано. Вы можете подать заявку на заём с помощью сайта.")
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .padding(.top, 14.0)

            
        }
        .padding()
        .navigationBarBackButtonHidden(true)
        
    }
}

struct NegativeView_Previews: PreviewProvider {
    static var previews: some View {
        NegativeView()
    }
}
