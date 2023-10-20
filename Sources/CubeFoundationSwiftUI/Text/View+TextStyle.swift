//
//  File.swift
//  CubeFoundation
//
//  Created by Sam Davis on 20/10/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public extension View {

    /// Applies all aspects of a `TextStyle` to this `View`.
    func style(_ style: TextStyle) -> some View {
        self.modifier(ScaledTextStyle(style: style))
    }
}
