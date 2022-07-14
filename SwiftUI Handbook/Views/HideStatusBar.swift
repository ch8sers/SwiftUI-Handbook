//
//  HideStatusBar.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/14/22.
//

import SwiftUI

struct HideStatusBar: View {
    @State var isHidden = false
    
    var body: some View {
        Text("Status Bar")
            .statusBar(hidden: isHidden)
            .onTapGesture {
                withAnimation {
                    isHidden = true
                }
            }
    }
}

struct HideStatusBar_Previews: PreviewProvider {
    static var previews: some View {
        HideStatusBar()
    }
}
