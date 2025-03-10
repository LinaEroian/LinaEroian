//
//  Github_portfolioApp.swift
//  Github portfolio
//
//  Created by Lina on 3/9/25.
//

import SwiftUI

@main
struct Github_portfolioApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: Github_portfolioDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
