//
//  NavigationViewHB.swift
//  SwiftUI Handbook
//
//  Created by The Ch8sers Inc. on 7/13/22.

// NOTE * USE FOR MAIN APP TO ACCESS LESSONS FOR RELEASE

import SwiftUI

struct NavigationViewHB: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink(destination: DismissKeyboard()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.orange)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: ModalPresentation()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.blue)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: AVPlayerHB()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.red)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: RedactedPlaceholder()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.green)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: TabViewPagination()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.orange)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: TabSelectionHB()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.blue)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: AnimationModifierAndTiming()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.red)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: ViewTransitionsAndAnimations()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.green)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: ComponentsHB()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.white)
                        .frame(height: 100)
                    .padding()
                }
                NavigationLink(destination: BindingHB()) {
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.black)
                        .frame(height: 100)
                    .padding()
                }
            }
            .navigationTitle("Today")
            .navigationBarItems(trailing: Image(systemName: "person.crop.circle"))
        }
    }
}

struct NavigationViewHB_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewHB()
    }
}
