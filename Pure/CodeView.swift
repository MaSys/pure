//
//  CodeView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct CodeView: View {

    @EnvironmentObject var store: Store

    @State private var code = ""

    var isEmpty: Bool {
        get {
            return self.code.isEmpty
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
                Text("Enter verification code from email")
                    .fontWeight(.bold)
                    .foregroundColor(self.isEmpty ? .black : .gray)
                Spacer()
            }
            .padding(.horizontal)
            TextField("ENTER CODE", text: $code)
                .font(.system(size: 40))
                .padding(.horizontal)

            Spacer()
            ProgressBarView(value: 2)
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

struct CodeView_Previews: PreviewProvider {
    static var previews: some View {
        CodeView()
    }
}
