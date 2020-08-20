//
//  NetworkController.swift
//  MailSwiftUI
//
//  Created by Justin on 4/4/20.
//  Copyright © 2020 justncode LLC. All rights reserved.
//

import Foundation

struct NetworkController {
    
    private static let baseUrl = "justncode.com"
    
    enum Endpoint {
        case mailMessages(path: String = "/json/email.json")
        
        var url: URL? {
            var components = URLComponents()
            
            components.scheme = "https"
            components.host = baseUrl
            components.path = path
            
            return components.url
        }
        
        private var path: String {
            switch self {
            case .mailMessages(let path):
                return path
            }
        }
    }
    
    static func fetchMailMessages(at endpoint: Endpoint, _ completion: @escaping (([Mail.Message]) -> Void)) {
        if let url = endpoint.url {
            URLSession.shared.dataTask(with: url) { (data, response, error) in
                if let error = error {
                    print("Whoa! An error occured, here it is!", error)
                }
                
                if let data = data {
                    do {
                        let mail = try JSONDecoder().decode(Mail.self, from: data)
                        completion(mail.messages)
                    } catch let error {
                        print("There was an error decoding...", error.localizedDescription)
                    }
                }
                
            }.resume()
        }
    }
    
}
