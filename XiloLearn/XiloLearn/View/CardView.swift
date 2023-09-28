import SwiftUI

struct CardView: View {
   @Binding var card: MusicCardModel
    
    var body: some View {
        HStack {
            HStack {
                Image("mainLogo")
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .background(Circle().fill(Color.gray))
                    .clipShape(Circle())
                    .padding(.trailing, 5)
                
                VStack(spacing: 0) {
                    
                    // vertical
                    VStack(alignment: .leading) {
                        Text(card.title)
                            .font(.callout)
                            .bold()
                            .lineLimit(2)
                        Spacer()
                        Text(card.artist)
                            .font(.caption)
                            .lineLimit(1)
                       
                        // horizontal
                        HStack {
                            Text(String(card.durantion))
                                .font(.footnote)
                                .lineLimit(1)
                            Spacer()
                            
//                            Button(action: {
//                                print(self.card.favoriteToggles)
//                                card.favoriteToggles.toggle()
//                                print(self.card.favoriteToggles)
//                            }, label: {
//                                Image(systemName: card.favoriteToggles ? "heart.fill" : "heart")
//                                    .foregroundColor(Color(uiColor: UIColor.label))
//                            })
//                                .frame(width: 25, height: 25)
//                                .padding(.leading, 10)
                        }
                    }
                }
            }
            .padding()
            .background(Rectangle().fill(Color.white))
            .cornerRadius(10)
        }
        
    }
}
