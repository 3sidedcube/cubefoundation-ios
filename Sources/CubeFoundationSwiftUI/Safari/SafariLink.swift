//
//  SafariLink.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI

/// A control for navigating to a URL within a `SafariView`
public struct SafariLink<Label>: View where Label: View {

    /// The URL for the link.
    var destination: URL?

    /// The label to display for this link.
    @ViewBuilder var label: () -> Label

    @State var showSafari = false

    public var body: some View {
        if let destination {
            Button(action: { showSafari = true }, label: label)
                .fullScreenCover(isPresented: $showSafari) {
                    SafariView(url: destination).ignoresSafeArea()
                }
        } else {
            Button(action: {}, label: label)
        }
    }
}
