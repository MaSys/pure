//
//  ProgressBarView.swift
//  Pure
//
//  Created by Yaser Almasri on 23/03/21.
//

import SwiftUI

struct ProgressBarView: View {

    var value: Float

    var body: some View {
        HStack {
            ProgressView("0\(Int(self.value))/05", value: self.value, total: 5)
                .progressViewStyle(LinearProgressViewStyle(tint: .black))
        }
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView(value: 1)
    }
}
