//
//  mugen.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 27/09/23.
//

import SwiftUI

@main
struct Mugen_IVApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(items: MusicCardModel.sampleData)
        }
    }
}
