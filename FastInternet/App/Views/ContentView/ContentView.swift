//
//  ContentView.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/16/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var fastRequest = FastRequest()
    @Environment(\.colorScheme) var colorScheme
   
    var body: some View {
        ContentNavigation {
            VStack {
                
            }
            .toolbar {
                _toolbar(label: LabelBar(icon: "gear"))
            }
        }
    }
    
    @ToolbarContentBuilder
    private func _toolbar(label: LabelBar) -> some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            NavigationLink {
                Settings()
            } label: {
                Image(systemName: label.icon)
                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                    .font(.system(size: 20, weight: .medium))
            }
        }
    }
}

#Preview {
    ContentView()
}
