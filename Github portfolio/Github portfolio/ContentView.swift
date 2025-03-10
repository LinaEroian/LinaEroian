//
//  ContentView.swift
//  Github portfolio
//
//  Created by Lina on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: Github_portfolioDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

#Preview {
    ContentView(document: .constant(Github_portfolioDocument()))
}
