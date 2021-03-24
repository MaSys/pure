//
//  IntroView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct IntroView: View {

    @EnvironmentObject var store: Store

    var body: some View {
        ZStack(alignment: .bottom) {
            Image("intro-bg2")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Image("intro-bg")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.top)

            VStack {
                Image("pure-logo-white")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120)
                    .padding(.top, 80)
                Spacer()
            }

            VStack {
                Spacer()
                Text("That's the best thing what will happen to you during the next 60 minutes.")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .font(.system(size: 22))
                    .padding(.horizontal, 50)
                Spacer()
            }

            Button(action: {
                self.store.hideIntroView()
                self.store.showOnboardingView()
            }, label: {
                Text("Continue")
                    .foregroundColor(.white)
                    .font(.title3)
            })
            .padding(.bottom, 50)
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
