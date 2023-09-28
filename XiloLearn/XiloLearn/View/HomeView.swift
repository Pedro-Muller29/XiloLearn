//
//  HomeView.swift
//  XiloLearn
//
//  Created by Alexandre Lemos da Silva on 27/09/23.
//
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
    
    let items: [MusicCardModel]
    let layout = [
        GridItem(.fixed(200)),
        GridItem(.fixed(200)),
        GridItem(.fixed(200))]
    
    //static var card = MusicCardModel.sampleData[0]
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                
                ZStack {
                    Color(red: 243/255, green: 243/250, blue: 243/255)
                        .ignoresSafeArea()
                    
                    HStack() {

                        // coluna da esquerda
                        VStack {
                            
                            ZStack {
                                Color(red: 243/255, green: 243/255, blue: 243/255)
                                
                                VStack(alignment: .leading) {
                                    Text("Select a track")
                                        .font(.title)
                                        .padding(.top)
                                    
                        
                                    HStack(){
                                        ForEach(0..<categories.count ) { index in
                                            
                                            Button(categories[index]) {
                                                
                                                selected = categories[index]
                                                
                                            }
                                                .foregroundColor(.white)
                                                .font(.callout)
                                                .frame(width: 117, height: 35)
                                                .background(Color(red: 0.69, green: 0.32, blue: 0.87))
                                                .cornerRadius(10)
                                              
                                               
                                        }
                                    }
                                    
                                    
                                    ScrollView {
                                        LazyVGrid(columns: layout) {
                                            ForEach(0..<items.count ) { index in
                                                
                                                if selected == "All" {
                                                    CardView(card: items[index])
                                                  
                                                } else if selected.compare(items[index].categorie, options: .caseInsensitive) == .orderedSame {
                                                    // a is equals to A
                                                    CardView(card: items[index])
                                                    
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        
                        // coluna direita
                        VStack {
                            ZStack {
                                // imagem de cabecalho
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
                            
                            
                            // pontuacao mocada
                            Text("1457")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            
                            Text("Score")
                                .font(.subheadline)
                                .fontWeight(.medium)
                            
                            Divider()
                            
                            Text("Ranking ⭐️")
                            Text("Favorites ❤️")
                            Text("Avatars 🧍‍♀️")
                            Text("Settings ⚙️")
                            
                            List {
                                List(AllScreens.allCases) {
                                    $0.self.view                 // << data knows its presenter
                                }
                            }
                            
                        }
                        .frame(width: proxy.size.width * 0.2, height: proxy.size.height)
                        .background(Color.white)
                        .cornerRadius(30, corners: .topLeft) // deixando o canto com a impressaozinha
                        .padding(.trailing)
                    }
                    .padding(.horizontal)
                    
                }
                .ignoresSafeArea()
                .padding(.trailing)
            }
            .ignoresSafeArea(.container)
            // .ignoresSafeArea(.all)
        }
    }
}


extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners) )
    }
}
