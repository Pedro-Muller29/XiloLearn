import Foundation
import SwiftUI

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View {
    func outlined(_ outlined: Bool = false) -> some View {
        modifier(OutlinedButton(isPressed: outlined))
    }
}

struct OutlinedButton: ViewModifier {
    var isPressed: Bool = false
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(self.isPressed ? .white : (Color(red: 0.69, green: 0.32, blue: 0.87)))
            .padding()
          //  .font(.callout)
            .font(.system(size: 15, weight: .heavy, design: .default))
           // .bold()
        
            .frame(width: 117, height: 35)
            .background(self.isPressed ? (Color(red: 0.69, green: 0.32, blue: 0.87)) : .white )
            .cornerRadius(10)
    }
}

enum AllScreens: CaseIterable, Identifiable {   // << type !!
    var id: Self { self }
    
    case ranking, favorites, avatars, settings   // << known variants
    
    
    @ViewBuilder var view: some View { // corresponding view !!
        switch self {
        case .ranking:
            RankingView()
            
        case .favorites:
            FavoritesView()
            
        case .avatars:
            AvatarsView()
            
        case .settings:
            SettingsView()
        }
    }
}

struct HomeView: View {
    @State var gridLayout: [GridItem] = [ GridItem() ]
    @State var categories: [String] = ["All", "Rock", "Country", "Pop", "Classical"]
    @State var selected: String = "All"
    
    @State var items: [MusicCardModel]
    
    let layout = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200)),
        GridItem(.fixed(200))]
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                
                ZStack {
                    Color(red: 241/255, green: 241/250, blue: 241/255)
                        .ignoresSafeArea()
                    
                    HStack() {
                        
                        // coluna da esquerda
                        VStack {
                            ZStack {
                                Color(red: 241/255, green: 241/250, blue: 241/255)
                                
                                VStack(alignment: .leading) {
                                    Text("Select a track")
                                        .font(.title)
                                        .padding(.top)
                                        .padding(.bottom, 1)
                                        //.padding()
                                    
                                    // displays the categories
                                    HStack(){
                                        ForEach(0..<categories.count ) { index in
                                            
                                            Button(categories[index]) {
                                                
                                                selected = categories[index]
                                                
                                            }
                                            .outlined(self.selected.contains(self.categories[index]) ? true : false)
                                            //.buttonStyle(OutlineButton())
                                        }
                                    }
                                    
                                    
                                    // display the cards by the selected categorie
                                    // TODO: on pressed calls the gameScene class with the specified music
                                    ScrollView {
                                        LazyVGrid(columns: layout) {
                                            ForEach($items, id: \.self) { card in
                                                
                                                if selected == "All" {
                                                    CardView(card: card)
                                                    
                                                } else if selected.compare(card.wrappedValue.categorie, options: .caseInsensitive) == .orderedSame {
                                                    // a is equals to A
                                                    CardView(card: card)
                                                    
                                                }
                                            }
                                        }
                                    } // fim scrollView
                                }
                            }
                        }
                        
                        // coluna direita
                        VStack {
                            // imagem de cabecalho
                            ZStack {
                                Image("SideMenuImage")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .scaledToFit()
                                    .ignoresSafeArea()
                                    .edgesIgnoringSafeArea(.all)
                            }
                            
                            // cabeca da pessoa
                            
                            ZStack {
                                
                                Circle()
                                    .fill(.white)
                                
                                Image("mainLogo")
                                    .resizable()
                                    .frame(width: 73.0, height: 73.0)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                            }
                            .frame(width: 80.0, height: 80.0)
                            .padding(-20)
                            
                            // pontuacao mocada
                            Text("1457")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Score")
                                .fontWeight(.light)
                              
                            Divider()

                            // mocado, ainda centralizar esses conteudos
                            List {
                                Text("Ranking")
                                Text("Favorites")
                                Text("Avatars")
                                Text("Settings")
                            }
                            .background(Color(red: 241/255, green: 241/250, blue: 241/255))
                            .ignoresSafeArea()
                            .listStyle(.plain)
                            .listRowSeparator(.hidden)
                            
                        }
                        .frame(minWidth: proxy.size.width * 0.2, maxWidth: .infinity,  minHeight: proxy.size.height, maxHeight: proxy.size.height)
                        .background(Color.white)
                        .cornerRadius(30, corners: .topLeft) // deixando o canto com a impressaozinha
                        
                    }
                    .ignoresSafeArea(.container, edges: [.top, .trailing])
                    .padding(.horizontal)
                    
                }
                .ignoresSafeArea()
                .padding(.trailing)
            }
            .ignoresSafeArea(.container)
        }
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
