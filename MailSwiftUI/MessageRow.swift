//
//  MessageRow.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import SwiftUI

struct MessageRow: View {
    var message: Mail.Message
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                Text(message.sender)
                    .header()
                Spacer()
                Text(String(message.timestamp.unixTimestampAsMeridiem))
                    .font(.subheadline)
            }
            
            Text(message.subjectDisplayableValue)
                .subheadlineBottomPadding()
            
            Text(message.body)
                .font(.callout)
                .lineLimit(2)
        }
    }
}

extension View {
    func subheadlineBottomPadding() -> some View {
        self
            .modifier(SubheadlineBottomPaddingModifier())
    }
}

struct SubheadlineBottomPaddingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(.bottom, 4)
    }
}


