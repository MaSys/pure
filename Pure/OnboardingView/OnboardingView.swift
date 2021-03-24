//
//  OnboardingView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct OnboardingView: View {

    @EnvironmentObject var store: Store

    @State private var tabIndex = 0

    var body: some View {
        VStack {
            Image("pure-logo-black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)

            TabView(selection: $tabIndex) {
                OnboardingStepView(
                    image: "Onboarding1",
                    title: "Start the game",
                    subtitle: "Upload your photo and get ready for your night adventure."
                )
                .tag(0)
                OnboardingStepView(
                    image: "Onboarding2",
                    title: "Anonymously playing",
                    subtitle: "Hurry up. You’ll have an hour to look a partner and one more hour to arrange a meeting."
                )
                .tag(1)
                OnboardingStepView(
                    image: "Onboarding3",
                    title: "Get ready to enjoy",
                    subtitle: "Meet and enjoy yourselves with pleasure. \n Without continuing."
                )
                .tag(2)
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))

            HStack {
                Button(action: {
                    self.store.hideOnboardingView()
                }, label: {
                    Text("SKIP")
                        .foregroundColor(.gray)
                })
                Spacer()
                Button(action: {
                    if self.tabIndex == 2 {
                        self.store.hideOnboardingView()
                    } else {
                        self.tabIndex += 1
                    }
                }, label: {
                    Text("NEXT")
                        .foregroundColor(.black)
                })
            }
            .padding(.horizontal, 40)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
