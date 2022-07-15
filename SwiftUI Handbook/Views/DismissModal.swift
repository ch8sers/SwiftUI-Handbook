//
//  DismissModal.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct DismissModal: View {
    @State private var showModal = false
    
    var body: some View {
        ZStack {
        GradientButton(text: "Sign In")
            .onTapGesture {
                showModal = true
            }
            
            if showModal {
                Rectangle()
                    .foregroundColor(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        showModal = false
                    }
                
                SignInView()
            }
        }
        .animation(.spring())
    }
}

struct DismissModal_Previews: PreviewProvider {
    static var previews: some View {
        DismissModal()
    }
}
