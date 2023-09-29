//
//  CardViewV2.swift
//  XiloLearn
//
//  Created by Pedro Mezacasa Muller on 28/09/23.
//

import SwiftUI

struct CardViewV2: View {
    
    private let figmaWidth: CGFloat = 203
    private let figmaHeight: CGFloat = 98
    
    var realHeight: CGFloat
    var realWidth: CGFloat
    
    @Binding var card: MusicCardModel
    
    var body: some View {
        HStack(spacing: getProportionalValueWidth(6)) {
            if let imageName = card.imageName {
                Image(imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: getProportionalValueWidth(69), height: getProportionalValueHeight(98))
                    .cornerRadius(getProportionalValueWidth(10), corners: [.bottomLeft, .topLeft])
            } else {
                Rectangle()
                    .foregroundColor(Color(uiColor: UIColor.systemPurple))
                    .opacity(0.5)
                    .frame(width: getProportionalValueWidth(69), height: getProportionalValueHeight(98))
                    .cornerRadius(getProportionalValueWidth(10), corners: [.bottomLeft, .topLeft])
            }
            
            VStack(alignment: .leading, spacing: getProportionalValueHeight(8)){
                Text(card.title)
                    .bold()
                    .font(.title3)
                    .lineLimit(2)
                    .frame(width: getProportionalValueWidth(123), alignment: .leading)
                    
                VStack(alignment: .leading, spacing: 0) {
                    Text(card.artist)
                        .font(.body)
                        .frame(width: getProportionalValueWidth(123), alignment: .leading)
                        .lineLimit(1)
                    HStack {
                        Text(String(format: "%.2f", card.durantion))
                            .font(.body)
                            .frame(width: getProportionalValueWidth(90), alignment: .leading)
                            .lineLimit(1)
                    }
                }
            }
            
            
        }
        .background(
            Color.white
        )
        .cornerRadius(getProportionalValueWidth(10), corners: .allCorners)
    }
    
    func getProportionalValueWidth(_ value: CGFloat) -> CGFloat {
        value * realWidth / figmaWidth
    }
    
    func getProportionalValueHeight(_ value: CGFloat) -> CGFloat {
        value * realHeight / figmaHeight
    }
}

struct CardViewV2_Previews: PreviewProvider {
    static var previews: some View {
        CardViewV2(realHeight: 98, realWidth: 203, card: .constant(MusicCardModel.sampleData.first!))
    }
}
