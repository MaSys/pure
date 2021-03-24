//
//  NotificationView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct NotificationView: View {

    @EnvironmentObject var store: Store

    var body: some View {
        VStack {
            Image("pure-logo-black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            HStack {
                Text("TURN ON YOUR PUSH-NOTIFICATIONS")
                    .fontWeight(.bold)
                    .font(.system(size: 29))
                Spacer()
            }
            .padding(.horizontal, 25)
            .padding(.top)

            HStack {
                Text("Time is short. You must respond quickly")
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.horizontal, 25)

            Spacer()

            Image("notifications")

            Spacer()
            ProgressBarView(value: 5)
                .padding(.horizontal, 25)
            Button(action: {
                self.store.verificationStep += 1
            }, label: {
                HStack {
                    Spacer()
                    Text("NEXT STEP")
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
                .background(Color.black)
                .cornerRadius(11)
                .padding(27)
            })
        }
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}
