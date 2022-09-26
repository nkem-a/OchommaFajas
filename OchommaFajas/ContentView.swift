//
//  ContentView.swift
//  OchommaFajas
//
//  Created by user on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView (.vertical, showsIndicators: false) {
                VStack (alignment: .leading) {
                    HStack {
                        Image(systemName: "line.horizontal.3.decrease")
                            .resizable().frame(width: 24, height: 25)
                        Spacer()
                        Text("Eti-Osa").font(.system(.headline, design: .rounded))
                        Text("Lagos").fontWeight(.ultraLight)
                        Spacer()
                        Image("profile").resizable().aspectRatio(contentMode: .fill).frame(width: 40, height: 40).clipShape(Circle())
                        Image(systemName: "magnifyingglass")
                        Image(systemName: "cart")
                        Image(systemName: "heart")
                        

                    }
                    
                    VStack (alignment: .leading, spacing: 8) {
                        HStack {
                            Text("Hi").font(.largeTitle)
                            Text("Nkechi").font(.largeTitle).fontWeight(.heavy)
                            
                        }
                        Text("Discover Eti-Osa by night")
                            .font(.subheadline)
                            .fontWeight(.light)
                    }
                    HStack {
                        HStack {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(Color(UIColor.systemRed))
                                .padding()
                            
                            Text("")
                                .font(.footnote)
                                .padding()
                            
                            Spacer()
                            Divider()
                                .frame(height: 24)
                            Image(systemName: "arrowtriangle.down.fill")
                                .resizable()
                                .frame(width: 8, height: 8)
                                .padding()
                        }
                        .foregroundColor(Color.secondary.opacity(0.5))
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(80)
                        .shadow(radius: 1)
                        .padding()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
