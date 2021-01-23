//
//  CheckView.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI

struct CheckBoxView: View {
    
    @Binding  var isChecked: Bool
    
    func toggle() {isChecked = !isChecked}
    
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
            }
            
        }
        
    }
    
}

struct RedView: View {
    var body: some View {
        Color.red
    }
}

struct BlueView: View {
    var body: some View {
        Color.blue
    }
}
