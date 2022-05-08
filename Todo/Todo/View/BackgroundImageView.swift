//
//  BackgroundImageView.swift
//  Todo
//
//  Created by Andrei Călin 
//

import SwiftUI

struct BackgroundImageView: View {
    var body: some View {
        Image("stickman")
            .antialiased(true)
            .resizable()
            .scaledToFit()
            .position(x: 220, y: 300)
            .ignoresSafeArea(.all)
    }
}

struct BackgroundImageView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundImageView()
    }
}
