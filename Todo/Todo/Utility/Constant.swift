//
//  Constant.swift
//  Todo
//
//  Created by Andrei Călin 
//

import SwiftUI

// MARK: - FORMATTER

let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

// MARK: - UI

var backgroundGradient: LinearGradient {
    return LinearGradient(gradient: Gradient(colors: [Color.teal, Color.green]), startPoint: .topLeading, endPoint: .bottomTrailing)
}

// MARK: - UX
