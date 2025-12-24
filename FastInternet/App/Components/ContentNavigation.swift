//
//  ContentNavigation.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/22/25.
//

import Foundation
import SwiftUI

struct ContentNavigation<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        Group {
            if #available(iOS 16, *) {
                NavigationStack {
                    content
                }
            } else {
                NavigationView {
                    content
                }.navigationViewStyle(.stack)
            }
        }
    }
}
