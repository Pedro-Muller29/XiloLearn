//
//  InstructionView.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 28/09/23.
//

import SwiftUI

enum ViewTypes {
    case instructionWatch
    case instructionPlay
    
    case guideWatch
    case guideRepeat
    case guideWatchAgain
    
    case endWon
    case endLost
}

enum InstructionViewText: String {
    case watch, play
    
    func getTitle() -> String {
        switch self {
            case .watch:
                return "Watch the notes!"
            case .play:
                return "Play them!"
        }
    }
    
    func getBody() -> String {
        switch self {
            case .watch:
                return "Watch closely\nthe played notes"
            case .play:
                return "Your turn to play what was played"
        }
    }
    
    func getButtonLabel() -> String {
        switch self {
            case .watch:
                return "Watch"
            case .play:
                return "Play"
        }
    }
}

struct InstructionView: View {
    @Environment(\.dismiss) var dismiss
    
    let type: InstructionViewText
    
    var body: some View {
        
        ZStack {
            Color(UIColor(red: 84, green: 84, blue: 84, alpha: 0.7))
                
            VStack(spacing: 16) {
                Text(type.getTitle())
                    .font(.system(size: 50))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .lineLimit(1)
                Text(type.getBody())
                    .font(.system(size: 30))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
                    .lineLimit(2)
                Button {
                    
                    dismiss()
                    
                } label: {
                    Text(type.getButtonLabel())
                        .font(.system(size: 16))
                        .bold()
                        .padding(.vertical, 8)
                        .padding(.horizontal, 24)
                        .foregroundColor(.white)
                        .background(.purple)
                        .cornerRadius(10)
                }
            }
            .padding(.vertical, 32)
            .padding(.horizontal, 16)
            
            .background(Color(UIColor(red: 251, green: 251, blue: 251, alpha: 1)))
            .cornerRadius(20)
            .frame(maxWidth: 448, maxHeight: 283)
        }
        .ignoresSafeArea()
    }
}

struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView(type: .watch)
    }
}
