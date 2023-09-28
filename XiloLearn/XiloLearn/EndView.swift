//
//  EndView.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 28/09/23.
//

import SwiftUI

enum EndScreenType: String {
    case won, lost
    
    func getTitle() -> String {
        switch self {
            case .won:
                return "You win!"
            case .lost:
                return "Try again"
        }
    }
}

struct EndView: View {
    let type: EndScreenType
    let score: Int
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 84, green: 84, blue: 84, alpha: 0.7))
            
            ZStack {
                Color(UIColor(red: 251, green: 251, blue: 251, alpha: 1))
                VStack {
                    
                    Text(type.getTitle())
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                        .bold()
                    Text("\(score)")
                        .font(.system(size: 50))
                        .foregroundColor(.black)
                    Text("Score")
                        .font(.system(size: 30))
                        .foregroundColor(.black)
                    
                    HStack {
                        Button {
                            
                        } label: {
                            
                        }
                        Button {
                            
                        } label: {
                            
                        }
                    }
                }
            }
            .frame(maxWidth: 448, maxHeight: 264)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView(type: .won, score: 100)
    }
}
