//
//  LoginView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct LoginView: View {

    @EnvironmentObject var store: Store

    @State private var email = ""

    var isEmpty: Bool {
        get {
            return self.email.isEmpty
        }
    }

    var body: some View {
        VStack {
            Image("pure-logo-black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            Spacer()
            HStack {
                Text("Your email is required from login")
                    .fontWeight(.bold)
                    .foregroundColor(self.isEmpty ? .black : .gray)
                Spacer()
            }
            .padding(.horizontal)
            TextField("ENTER YOUR EMAIL", text: $email)
                .font(.system(size: 40))
                .padding(.horizontal)

            Spacer()
            ProgressBarView(value: 1)
                .padding(.horizontal, 25)
            Button(action: {
                self.store.verificationStep += 1
            }, label: {
                HStack {
                    Spacer()
                    Text("NEXT STEP")
                        .foregroundColor(self.isEmpty ? .gray : .white)
                        .padding()
                    Spacer()
                }
                .background(Color.black)
                .cornerRadius(11)
                .padding(27)
            })
            .disabled(self.isEmpty)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
