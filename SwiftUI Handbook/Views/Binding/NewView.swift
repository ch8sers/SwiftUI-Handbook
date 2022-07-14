//
//  NewView.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.
//

import SwiftUI

struct NewView: View {
    @Binding var show: Bool
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .padding()
            .onTapGesture {
                withAnimation(.spring()) {
                    show.toggle()
                }
        }
    }
}

struct NewView_Previews: PreviewProvider {
    static var previews: some View {
        NewView(show: .constant(true))
    }
}
