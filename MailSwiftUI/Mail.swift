//
//  Mail.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import Foundation

struct Mail: Decodable {
    var messages: [Message]
    
    struct Message: Decodable, Hashable {
        var sender: String
        var subject: String
        var body: String
        var timestamp: Double
    }
}

extension Mail.Message {
    var subjectDisplayableValue: String {
        return subject.isEmpty ? "No Subject" : subject
    }
}
