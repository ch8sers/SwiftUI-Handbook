//
//  FullScreenModal.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct FullScreenModal: View {
    @State var showModal = false
    
    var body: some View {
        Text("Show Modal")
            .fullScreenCover(isPresented: $showModal, content: {
                ModalView()
            })
            .onTapGesture {
                showModal = true
            }
    }
}

struct FullScreenModal_Previews: PreviewProvider {
    static var previews: some View {
        FullScreenModal()
    }
}
