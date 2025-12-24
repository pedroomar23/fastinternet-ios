//
//  Labels.swift
//  FastInternet
//
//  Created by Pedro Omar  on 12/22/25.
//

import Foundation
import SwiftUI

// MARK: - Label View

struct LabelIcon: Identifiable {
    let id = UUID()
    let text: LocalizedStringKey
    let icon: String
}

// MARK: - Label ToolBar

struct LabelBar: Identifiable {
    let id = UUID()
    let icon: String 
}


