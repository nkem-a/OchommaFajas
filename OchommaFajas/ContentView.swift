//
//  ContentView.swift
//  OchommaFajas
//
//  Created by user on 19/09/2022.
//

import SwiftUI

struct ContentView: View {
    var product:Product = Product(uuid: "product123", image: Image("faja1"), title: "title", price: 130.00, description: "Post-op Recovery Faja.", reviews: [Review(name: "Helene Kox", rating: 5.0, content: "Best purchase I've made in a long time. Soooo slick!")])
    
    @State var items:[Product] = [Product(uuid: "faja7", image: Image("faja7"), title: "FAJA STAGE 3 SHORT", price: 119.99, description: "Designed for post-op use at least 12+ weeks after surgery. This is the Faja that you need to help your body finish adapting to its final state. Because ceasing the compression of your postoperative faja immediately is too drastic and not good for your final results. This faja is our best seller in our retail locations. This garment was designed to be the most comfortable faja in our catalog while still providing the ideal compression your body needs during this wine down period. Remember, you must dress with compression. ", reviews: [Review(name: "John Smith", rating: 4.7, content: "Finally a great lens! so good! Best purchase I've made in a long time. Soooo slick!")]),Product(uuid: "faja3", image: Image("faja3"), title: "FAJA STAGE 1 BLACK 3 HOOKS", price: 119.99, description: "Designed for comfort and ease of use immediately following surgery and the first weeks of postoperative recovery.", reviews: [Review(name: "Annie", rating: 3.7, content: "This is a great deal!! Best purchase I've made in a long time. Soooo slick!")]),Product(uuid: "faja4", image: Image("faja4"), title: "FAJAS MYD 0029", price: 114.00, description: "The MYD 0029 mid thigh body shaper faja with bra is designed for post-surgery procedures or for daily use. It is designed to shape and slim your figure while improving your posture. Available in Beige and Black. Please be advised, these garments run 1 to 2 sizes small from the size chart.", reviews: [Review(name: "Jane", rating: 5.0, content: "This is a great deal!! Best purchase I've made in a long time. Soooo slick!")]),Product(uuid: "faja5", image: Image("faja5"), title: "FAJA RECOVERY HIGH BACK ADJUSTABLE CLOSURE", price: 119.99, description: "This faja features 360° maximum compression and three levels of adjustable front closures for maximum comfort through recovery. High compression materials minimize bloating and promote the release of fluids. Trusted by surgeons and patients worldwide. This post liposuction high compression faja garments work well under clothes, stay soft, and stretch for a full range of movement. Medical-grade compression promotes good posture and shapes the body in a uniform and natural wa", reviews: [Review(name: "Irene L.", rating: 5.0, content: "This is a great deal!! Best purchase I've made in a long time. Soooo slick!")]),Product(uuid: "faja2", image: Image("faja2"), title: "FAJAS SALOME 0313", price: 64.99, description: "This corset shaper instantly helps reduce inches off the waist. ", reviews: [Review(name: "Adjoa B.", rating: 5.0, content: "This is a great deal!! Best purchase I've made in a long time.")]),Product(uuid: "faja6", image: Image("faja6"), title: "FAJA SAUNA", price: 64.99, description: "Designed to maximize the results of your exercise routine this faja provides lumbar support and posture correction when you need it most. Made of neoprene, the material that scuba suits are made of, increases body temperature in the waist area. Makes you sweat more when working out.", reviews: [Review(name: "Nelly O.", rating: 5.0, content: "This is a great deal!! Best purchase I've made in a long time. Soooo slick!")])]
    @State var cart:[Product] = []
    @State var favorites:[Product] = []
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.white
        UITabBar.appearance().isOpaque = true
        
        items.append(contentsOf:[product, product, product])
        cart.append(contentsOf: [product, product, product])
    }
    
    var body: some View {
        TCTabBar(images: [
            Image(systemName: "house.fill"),
            Image(systemName: "cart.fill"),
            Image(systemName: "heart.fill"),
            Image(systemName: "gear")
        ], tabIndex: 0, contentTabs: [
            AnyView(ProductCatalog(products: $items, cart: $cart, favorites: $favorites)),
            AnyView(CartView(items: $cart)),
            AnyView(ProductCatalog(products: $favorites, cart: $cart, favorites: $favorites)),
            AnyView(SettingsView())
        ])
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
