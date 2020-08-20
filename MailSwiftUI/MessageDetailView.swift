//
//  MessageDetailView.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import SwiftUI

struct MessageDetailView: View {
    var message: Mail.Message
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(message.subjectDisplayableValue)
                .font(.title)
            
            Text(message.timestamp.unixTimestampAsMeridiem)
                .padding(.bottom, 16)
            
            Text(message.body)
            Spacer()
        }
        .padding()
        .navigationBarTitle(message.sender)
    }
}
