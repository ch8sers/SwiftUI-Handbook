//
//  DismissKeyboard.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct DismissKeyboard: View {
    var body: some View {
        SignInView()
            .onTapGesture {
                hideKeyboard()
            }
    }
}

struct DismissKeyboard_Previews: PreviewProvider {
    static var previews: some View {
        DismissKeyboard()
    }
}
