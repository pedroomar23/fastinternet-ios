//
//  PresentationView.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/23/25.
//

import SwiftUI

struct PresentationView: View {
    
    @State private var isFinish: Bool = false
    let totalPage = 3
    
    var body: some View {
        if isFinish {
            ContentView()
        } else {
            ZStack (alignment: .leading) {
                
            }.ignoresSafeArea(edges: .all)
        }
    }
}

#Preview {
    PresentationView()
}


