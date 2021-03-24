//
//  GenderView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct GenderView: View {

    @EnvironmentObject var store: Store

    @State private var gender = "male"

    var body: some View {
        VStack {
            Image("pure-logo-black")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            Spacer()
            HStack {
                Text("SELECT YOUR GENDER")
                    .fontWeight(.bold)
                    .font(.system(size: 29))
                Spacer()
            }
            .padding(.horizontal)

            VStack {
                Button(action: {
                    self.gender = "male"
                }, label: {
                    HStack {
                        if self.gender == "male" {
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.black)
                        } else {
                            Image(systemName: "circle")
                                .foregroundColor(.black)
                        }
                        Text("MALE")
                            .foregroundColor(.black)
                        Spacer()
                    }
                })
                .padding(.bottom, 8)

                Button(action: {
                    self.gender = "female"
                }, label: {
                    HStack {
                        if self.gender == "female" {
                            Image(systemName: "largecircle.fill.circle")
                                .foregroundColor(.black)
                        } else {
                            Image(systemName: "circle")
                                .foregroundColor(.black)
                        }
                        Text("FEMALE")
                            .foregroundColor(.black)
                        Spacer()
                    }
                })
                .padding(.top, 8)
            }
            .padding()

            Spacer()
            ProgressBarView(value: 3)
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

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
