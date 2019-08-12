//
//  AlertWithActionsView.swift
//  SwiftUI-AlertDemo
//
//  Created by Russell Archer on 12/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import SwiftUI

struct AlertWithActionsView: View {
    @State private var showAlertWithActions = false
    @State private var messageText = "No message yet"
    
    var body: some View {
        VStack {
            Button("Show alert with actions") {
                self.showAlertWithActions.toggle()
            }
            .padding(.all)
                
            Text("Message: \(messageText)")
            .padding(.all)
            
            Spacer()
                
            .alert(isPresented: $showAlertWithActions) {
                Alert(title: Text("Thanks"),
                      message: Text("Say thanks?"),
                      primaryButton: .default(Text("OK")) { self.messageText = "Thank you :-)" },
                      secondaryButton: .cancel() { self.messageText = "Shame :-(" })
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
