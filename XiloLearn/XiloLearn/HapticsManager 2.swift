//
//  HapticsManager.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 26/09/23.
//

import Foundation
import CoreHaptics

class HapticManager {
    private var engine: CHHapticEngine?

    init() {
        print("DEBUG: Entered prepareHaptic")
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        do {
            engine = try CHHapticEngine()
            try engine?.start()
        } catch {
            print("Error creating the engine: \(error.localizedDescription)")
        }
    }

    func playHaptic(intensity: Float, sharpness: Float) {
        print("DEBUG: Entered playHaptic")
        guard CHHapticEngine.capabilitiesForHardware().supportsHaptics else { return }
        
        var events = [CHHapticEvent]()
        let intensity = CHHapticEventParameter(parameterID: .hapticIntensity, value: intensity)
        let sharpness = CHHapticEventParameter(parameterID: .hapticSharpness, value: sharpness)
        let event = CHHapticEvent(eventType: .hapticTransient, parameters: [intensity, sharpness], relativeTime: 0)
        events.append(event)
        
        do {
            let pattern = try CHHapticPattern(events: events, parameters: [])
            let player = try engine?.makePlayer(with: pattern)
            try player?.start(atTime: 0)
        } catch {
            print("Error trying to play pattern: \(error.localizedDescription)")
        }
    }
}
