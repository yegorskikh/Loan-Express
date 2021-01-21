//
//  CheckView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI

struct CheckBoxView: View {
    @State var isChecked:Bool = false
    
    func toggle() {isChecked = !isChecked}
    
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
            }
            
        }
        
    }
    
}

