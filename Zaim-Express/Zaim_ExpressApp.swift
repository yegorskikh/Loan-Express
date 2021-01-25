//
//  Zaim_ExpressApp.swift
//  Zaim-Express
//
//  Created by Егор Горских on 20.01.2021.
//

import SwiftUI

@main
struct Zaim_ExpressApp: App {
    var body: some Scene {
        
        WindowGroup {
            
            TabView {
                
                CalculatorView()
                    .tabItem {
                        Image(systemName: "applescript")
                    }
                
                MenuCardsView()
                    .tabItem {
                        Image(systemName: "applescript")
                    }
                
                ProfileView()
                    .tabItem {
                        Image(systemName: "applescript")
                    }
            }
                  
        }
        
    }
}
