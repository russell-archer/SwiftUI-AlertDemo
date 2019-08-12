//
//  ContentView.swift
//  SwiftUI-AlertDemo
//
//  Created by Russell Archer on 08/07/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: AlertWithActionsView()) { Text("Goto AlertWithActionsView") }
                .padding(.all)

                Button(action: { self.showAlert.toggle() }) {
                    Text("Show simple alert")
                }
                .padding(.all)
                
                Spacer()
                            
                .alert(isPresented: $showAlert) {
                    Alert(
                        title: Text("Thanks"),
                        message: Text("Thanks for tapping!"),
                        dismissButton: .default(Text("OK")))
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
