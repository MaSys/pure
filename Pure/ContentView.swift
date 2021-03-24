//
//  ContentView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct ContentView: View {

    @EnvironmentObject var store: Store

    var body: some View {
        if self.store.isIntroVisible {
            IntroView()
        } else if store.isOnboardingViewVisible {
            OnboardingView()
        } else {
            if self.store.verificationStep == 0 {
                LoginView()
            } else if self.store.verificationStep == 1 {
                CodeView()
            } else if self.store.verificationStep == 2 {
                GenderView()
            } else if self.store.verificationStep == 3 {
                LocationView()
            } else if self.store.verificationStep == 4 {
                NotificationView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
