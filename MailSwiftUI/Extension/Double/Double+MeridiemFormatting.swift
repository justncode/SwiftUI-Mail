//
//  Double+MeridiemFormatting.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import Foundation

extension Double {
    var unixTimestampAsMeridiem: String {
        return Date(timeIntervalSince1970: self).asMeridiem
    }
}
