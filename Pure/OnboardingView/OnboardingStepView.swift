//
//  Onboarding1View.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct OnboardingStepView: View {

    var image: String
    var title: String
    var subtitle: String

    var body: some View {
        VStack {
            Spacer()
            Image(self.image)

            Text(self.title)
                .multilineTextAlignment(.center)
                .font(.system(size: 22))
            Text(self.subtitle)
                .multilineTextAlignment(.center)
                .font(.system(size: 14))
                .foregroundColor(.gray)
                .padding(.horizontal, 50)
            Spacer()
        }
    }
}

struct OnboardingStepView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingStepView(
            image: "Onboarding1",
            title: "Start the game",
            subtitle: "Upload your photo and get ready for your night adventure."
        )
    }
}
