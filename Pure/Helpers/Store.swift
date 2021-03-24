//
//  Store.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

class Store: ObservableObject {

    public static var current = Store()

    @Published var isIntroVisible = true
    @Published var isOnboardingViewVisible = false
    @Published var verificationStep = 0

    func showIntroView () {
        self.isIntroVisible = true
    }

    func hideIntroView () {
        self.isIntroVisible = false
    }

    func setOnboardingViewVisible () {
        self.isOnboardingViewVisible = UserDefaults.standard.bool(forKey: "isOnboardingViewVisible")
    }

    func showOnboardingView () {
        self.isOnboardingViewVisible = true
    }

    func hideOnboardingView () {
        self.isOnboardingViewVisible = false
        // UserDefaults.standard.setValue(self.isOnboardingViewVisible, forKey: "isOnboardingViewVisible")
    }

}

