//
//  mugen.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 27/09/23.
//

import SwiftUI
import AVFoundation

@main
struct Mugen_IVApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView(items: MusicCardModel.sampleData)
                .preferredColorScheme(.light)
                .onAppear {
                    do {
                        try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
                        print("AVAudioSession Category Playback OK")
                        do {
                            try AVAudioSession.sharedInstance().setActive(true)
                            print("AVAudioSession is Active")
                        } catch {
                            print(error.localizedDescription)
                        }
                    } catch {
                        print("Error while setting AVAudioSession.Category to playback: \(error.localizedDescription)")
                    }
                }
        }
    }
}
