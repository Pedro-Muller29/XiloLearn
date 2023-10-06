//
//  GuideView.swift
//  XiloLearn
//
//  Created by Gustavo Zahorcsak Matias Silvano on 28/09/23.
//

import SwiftUI

enum GuideViewType: String {
    case watch = "Watch!"
    case repeatEnum = "Repeat!"
    case watchAgain = "Watch Again"
}

struct GuideView: View {
    @Environment(\.dismiss) var dismiss
    
    let type: GuideViewType
    
    var body: some View {
        ZStack {
            Color(UIColor(red: 84, green: 84, blue: 84, alpha: 0.7))
            
            ZStack {
                Color(UIColor(red: 251, green: 251, blue: 251, alpha: 1))

                Text(type.rawValue)
                    .font(.system(size: 50))
                    .bold()
                    .foregroundColor(.black)
            }
            .frame(maxWidth: 547, maxHeight: 100)
            .cornerRadius(20)
        }
        .ignoresSafeArea()
        .onTapGesture {
            dismiss()
            NotificationCenter.default.post(name: Notification.Name("isShowingInstructions"), object: nil)
        }
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(type: .watch)
    }
}
