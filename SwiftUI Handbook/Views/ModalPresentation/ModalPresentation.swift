//
//  ModalPresentation.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct ModalPresentation: View {
    @State private var showSheet = false
    
    var body: some View {
        HStack {
            GradientButton(text: "Sign In")
                .onTapGesture {
                    showSheet = true
            }
        }
        .sheet(isPresented: $showSheet, content: {
            SignInView()
        })
    }
}

struct ModalPresentation_Previews: PreviewProvider {
    static var previews: some View {
        ModalPresentation()
    }
}
