//
//  ListRowItemView.swift
//  Todo
//
//  Created by Andrei Călin 
//

import SwiftUI

struct ListRowItemView: View {
    @Environment(\.managedObjectContext) var ViewContext
    @ObservedObject var item: Item
    
    var body: some View {
        Toggle("", isOn: $item.completion)
        .onReceive(item.objectWillChange, perform: { _ in
            if self.ViewContext.hasChanges {
                try? self.ViewContext.save()
            }
        })
    }
}
