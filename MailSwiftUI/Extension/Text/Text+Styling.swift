//
//  Text+Styling.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import SwiftUI

extension Text {
    func header() -> Text {
        self
            .font(.headline)
            .bold()
    }
}
