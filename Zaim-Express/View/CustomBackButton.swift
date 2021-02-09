//
//  CustomBackButton.swift
//  Zaim-Express
//
//  Created by Егор Горских on 26.01.2021.
//

import SwiftUI

struct CustomBackButton: View {
    
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Image(systemName: "arrow.backward")
                .foregroundColor(.green)
        }
        
    }
}

