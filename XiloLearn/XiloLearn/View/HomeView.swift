import Foundation
import SwiftUI
import SpriteKit

struct RoundedCorner: Shape {
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct OutlineButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .foregroundColor(configuration.isPressed ? .white : (Color(red: 0.69, green: 0.32, blue: 0.87)))
            .padding()
            .font(.callout)
            .frame(width: 117, height: 35)
            .background(configuration.isPressed ? (Color(red: 0.69, green: 0.32, blue: 0.87)) : .white )
            .cornerRadius(10)
        
        //            .label
        //            .foregroundColor(configuration.isPressed ? .white : (Color(red: 0.69, green: 0.32, blue: 0.87)))
        //            .padding()
        //            .background(
        //                RoundedRectangle(
        //                    cornerRadius: 8,
        //                    style: .continuous
        //                ).stroke(Color.accentColor)
        /** .foregroundColor(.white)
         //                                                .font(.callout)
         //                                                .frame(width: 117, height: 35)
         //                                                .background(Color(red: 0.69, green: 0.32, blue: 0.87))
         //                                                .cornerRadius(10)
         //                                                .buttonStyle(OutlineButton()) */
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
    @State var aumenta: Bool = false
    
    @ObservedObject var scene: GameScene = {
        let scene = GameScene(startingMenu: true, song: LibraryOfSongs.anunciacao, size: CGSize(width: 844, height: 390))
        return scene
    }()
    
    let items: [MusicCardModel]
    let layout = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200)),
        GridItem(.fixed(200))]
    
    var body: some View {
        NavigationView {
            if !scene.gotOutOfMenu || scene.isPlaying {
                SpriteView(scene: self.scene)
                    .ignoresSafeArea()
            } else {
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
                                        Text("Select a track ✨")
                                            .font(.title)
                                            .padding(.top)
                                        
                                        // displays the categories
                                        HStack(){
                                            ForEach(0..<categories.count ) { index in
                                                
                                                Button(categories[index]) {
                                                    
                                                    selected = categories[index]
                                                    
                                                }
                                                .buttonStyle(OutlineButton())
                                            }
                                        }
                                        
                                        // display the cards by the selected categorie
                                        // TODO: on pressed calls the gameScene class with the specified music
                                        ScrollView {
                                            LazyVGrid(columns: layout) {
                                                ForEach(0..<items.count ) { index in
                                                    Group {
                                                        if selected == "All" {
                                                            CardView(card: items[index])
                                                            
                                                        } else if selected.compare(items[index].categorie, options: .caseInsensitive) == .orderedSame {
                                                            // a is equals to A
                                                            CardView(card: items[index])
                                                            
                                                        }
                                                    } .onTapGesture {
                                                        scene.setupSong(with: LibraryOfSongs.a)
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
                                Image("mainLogo")
                                    .resizable()
                                    .frame(width: 80.0, height: 80.0)
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .padding(-15)
                                
                                // pontuacao mocada
                                Text("1457")
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                
                                Text("Score")
                                    .font(.subheadline)
                                    .fontWeight(.medium)
                                    .padding(.bottom)
                                
                                // mocado, ainda centralizar esses conteudos
                                List {
                                    Text("Ranking")
                                    Text("Favorites")
                                    Text("Avatars")
                                    Text("Settings")
                                }
                                .background(Color(red: 241/255, green: 241/250, blue: 241/255))
                                .ignoresSafeArea()
                                .padding(-20)
                                
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
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
