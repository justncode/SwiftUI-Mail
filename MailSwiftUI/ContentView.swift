//
//  MessagesView.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import SwiftUI

struct MessagesView: View {
    @ObservedObject private var viewModel = ContentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.messages, id: \.self) { message in
                    NavigationLink(destination: MessageDetailView(message: message)) {
                        MessageRow(message: message)
                    }
                }
            }
            .navigationBarTitle("Mail")
        }
        .onAppear {
            self.viewModel.fetchMailMessages()
        }
    }
}
