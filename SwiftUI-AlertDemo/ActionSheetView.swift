//
//  ActionSheetView.swift
//  SwiftUI-AlertDemo
//
//  Created by Russell Archer on 12/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var showActionSheet = false
    @State private var selectedFruit = "No fruit selected"

    var body: some View {
        VStack {
            Text(selectedFruit).padding(.all)
            
            Button("Show ActionSheet") {
                self.showActionSheet.toggle()
            }
            .padding(.all)
            
            Spacer()

            .actionSheet(isPresented: $showActionSheet) {
                ActionSheet(
                    title: Text("Fruit"),
                    message: Text("Select Fruit"),
                    buttons: [
                        .cancel { self.selectedFruit = "No fruit selected" },
                        .default(Text("Apple")) { self.selectedFruit = "Apple" },  // Create three default style buttons
                        .default(Text("Orange")) { self.selectedFruit = "Orange" },
                        .default(Text("Blueberry")) { self.selectedFruit = "Blueberry" }
                    ]
                )
            }
        }
    }
}

#if DEBUG
struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
#endif
