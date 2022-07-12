//
//  DragGestureHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/11/22.
//

import SwiftUI

struct DragGestureHB: View {
    @State var viewState = CGSize.zero
    
    var body: some View {
        RoundedRectangle(cornerRadius: 30)
            .fill(Color.blue)
            .frame(width: 300, height: 400)
            .offset(x: viewState.width, y: viewState.height)
            .animation(.spring(response: 0.4, dampingFraction: 0.6))
            .gesture(
                DragGesture().onChanged { value in
                    viewState = value.translation
                }
                    .onEnded { value in
                        viewState = .zero
                    }
            )
    }
}

struct DragGestureHB_Previews: PreviewProvider {
    static var previews: some View {
        DragGestureHB()
    }
}
