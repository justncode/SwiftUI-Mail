//
//  ContentViewModel.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import SwiftUI

class MessagesViewModel: ObservableObject {
    @Published var messages: [Mail.Message] = []

    func fetchMailMessages(at endpoint: NetworkController.Endpoint = .mailMessages()) {
        NetworkController.fetchMailMessages(at: endpoint) { messages in
            DispatchQueue.main.async {
                self.messages = messages
            }
        }
    }
}
