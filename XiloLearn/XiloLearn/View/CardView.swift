import SwiftUI

struct CardView: View {
    let card: MusicCardModel
    
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
                            Image(systemName: card.favoriteToggles ? "heart.fill" : "heart")
                                .frame(width: 25, height: 25)
                                .padding(.leading, 10)
                        }
                    }
                }
            }
            .padding()
            .background(Rectangle().fill(Color.white))
            .cornerRadius(10)
//            .shadow(color: .gray, radius: 3, x: 0.5, y: 0.2) // bianca pode n gostar
        }
        
    }
}
