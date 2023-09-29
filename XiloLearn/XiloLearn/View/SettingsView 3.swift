//
//  SettingsView.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 27/09/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Text("Settings")
                .foregroundColor(.white)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
