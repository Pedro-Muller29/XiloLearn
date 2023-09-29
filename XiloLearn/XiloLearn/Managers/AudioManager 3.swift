//
//  AudioManager.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 26/09/23.
//

import Foundation
import AVFoundation
import AVFAudio

class AudioManager: NSObject, AVAudioPlayerDelegate {
    
    // Delete shared instance to make individual AudioManagers
    static let shared = AudioManager()
    
    private var audioPlayers: [URL: AVAudioPlayer] = [:]
    private var duplicateAudioPlayers: [AVAudioPlayer] = []

    private override init() {}

    func play(fileName: String, fileExtension: String) {

        guard let url = Bundle.main.url(forResource: fileName, withExtension: fileExtension),
              let player = getAudioPlayer(for: url) else { return }

        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSession.Category.playback)
        } catch {
            print("Error setting AVAudioSession.Category to playback: \(error.localizedDescription)")
        }
        
        player.volume = 1
        player.prepareToPlay()
        player.play()
    }

    private func getAudioPlayer(for url: URL) -> AVAudioPlayer? {
        guard let player = audioPlayers[url] else {
            let player = try? AVAudioPlayer(contentsOf: url)
            audioPlayers[url] = player
            return  player
        }
        guard player.isPlaying else { return player }
        guard let duplicatePlayer = try? AVAudioPlayer(contentsOf: url) else { return nil }
        duplicatePlayer.delegate = self
        duplicateAudioPlayers.append(duplicatePlayer)
        return duplicatePlayer
    }

    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        duplicateAudioPlayers.removeAll { $0 == player }
    }
}
