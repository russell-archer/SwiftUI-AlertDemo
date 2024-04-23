//
//  AlertWithActionsView.swift
//  SwiftUI-AlertDemo
//
//  Created by Russell Archer on 12/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import SwiftUI
import EffectsLibrary

struct AlertWithActionsView: View {
    @State private var showAlertWithActions = false
    @State private var messageText = "No message yet"
    @State private var showFireworks = false
    
    var body: some View {
        VStack {
            FireworksView()
                .ignoresSafeArea()
                .opacity(showFireworks ? 1 : 0)

            Button("Show alert with actions") {
                showAlertWithActions.toggle()
                withAnimation { showFireworks = true }
            }
            .padding(.all)
                
            Text("Message: \(messageText)")
            .padding(.all)
            
            Spacer()
                
            .alert(isPresented: $showAlertWithActions) {
                Alert(title: Text("Thanks"),
                      message: Text("Say thanks?"),
                      primaryButton: .default(Text("OK")) {
                        messageText = "Thank you :-)"
                        withAnimation { showFireworks = false }
                      },
                      secondaryButton: .cancel() {
                        messageText = "Shame :-("
                        withAnimation { showFireworks = false }
                })
            }
        }
    }
}


#if DEBUG
struct AlertWithActionsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertWithActionsView()
    }
}
#endif
