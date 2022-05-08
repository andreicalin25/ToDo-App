//
//  ShowTaskDetailsView.swift
//  Todo
//
//  Created by Andrei Călin 
//

import SwiftUI

struct ShowTaskDetailsView: View {
    // MARK: - PROPERTY
    
    @AppStorage("isDarkMode") private var isDarkMode: Bool = false
    @Environment(\.managedObjectContext) private var viewContext
    @ObservedObject var item: Item
    @Binding var isShowing: Bool
    
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack(spacing: 16) {
                Text(item.task ?? "")
                    .font(.system(.title2, design: .rounded))
                    .fontWeight(.heavy)
                    .foregroundColor(item.completion ? Color.green : Color.primary)
                    .padding(.horizontal)
                
                Text("Created at \(item.timestamp!, formatter: itemFormatter)")
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.regular)
                    .foregroundColor(.gray)
                    .padding()
                    .background(
                        isDarkMode ? Color(UIColor.tertiarySystemBackground) : Color(UIColor.secondarySystemBackground)
                    )
                    .cornerRadius(10)
                
            } //: VSTACK
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(
                isDarkMode ? Color(UIColor.secondarySystemBackground) : Color.white
            )
            .cornerRadius(16)
            .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.65), radius: 24)
            .frame(maxWidth: 640)
        } //: VSTACK
        .padding()
    }
}

