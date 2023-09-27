//
//  InputValidation.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 26/09/23.
//

extension SimonAI {
    
    /// Validate if the user input is the correct one (if its indeed the next in the sequence)
    func validateInput(xiloKey: XiloKeys) -> Bool {
        defer {
            if currentIndex == getCurrentSongSize() {
                self.currentLevel += 1
            }
        }
        guard let nextNote = getNextExpectedNote() else { return false }
        return xiloKey == nextNote
    }
    
    /// Get the next expected node and udpates the AI if the array has finished.
    private func getNextExpectedNote() -> XiloKeys? {
        for _ in 0..<(self.combinationToPlay.count - currentIndex) {
            let currentKey = combinationToPlay[currentIndex]
            currentIndex += 1
            if currentKey != .BREAK {
                return currentKey
            }
        }
        currentIndex = 0
        return nil
    }
    
    /// Gets the correct size for the current level taking into account the increase per cycle
    private func getCurrentSongSize() -> Int {
        return (currentLevel * increasePerCycle) + 1
    }
}
