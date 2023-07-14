//
//  ContentView.swift
//  Restart
//
//  Created by Rupaj Sen on 13/07/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    var body: some View {
        ZStack{
            if isOnboardingViewActive{
                OnboardingView()
            } else{
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
