//
//  SafariView.swift
//  CubeFoundation
//
//  Created by Sam Davis on 04/01/2023.
//  Copyright © 2023 3 SIDED CUBE. All rights reserved.
//

import SwiftUI
import SafariServices

public struct SafariView: UIViewControllerRepresentable {

    let url: URL

    public init(url: URL) {
        self.url = url
    }

    public func makeUIViewController(
        context: UIViewControllerRepresentableContext<Self>
    ) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }

    public func updateUIViewController(
        _ uiViewController: SFSafariViewController,
        context: UIViewControllerRepresentableContext<SafariView>
    ) {}
}

struct SafariView_Previews: PreviewProvider {
    static var previews: some View {
        SafariView(url: URL(string: "https://google.co.uk")!)
            .ignoresSafeArea()
    }
}
