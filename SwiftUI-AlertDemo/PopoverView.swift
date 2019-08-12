//
//  PopoverView.swift
//  SwiftUI-AlertDemo
//
//  Created by Russell Archer on 12/08/2019.
//  Copyright © 2019 Russell Archer. All rights reserved.
//

import SwiftUI

struct PopoverView: View {
    @State private var showPopover = false

    var body: some View {
        VStack {
            Button("Show Popover") {
                self.showPopover.toggle()
            }
            .popover(isPresented: $showPopover, attachmentAnchor: .point(UnitPoint(x: 20, y: 20)), arrowEdge: .bottom) {
                Text("Hello! 👋")
            }
            
            // I would expect this to attach a 20x20 popover to the button. But it doesn't. Not sure if this is my
            // lack of understanding or a bug in SwiftUI
            
            Spacer()
        }
    }
}

#if DEBUG
struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
#endif
