//
//  ContentView.swift
//  TouchdownKir
//
//  Created by Test on 24.09.23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        GeometryReader {geometry in
            ZStack {
                if shop.showingProduct == false && shop.selectedProduct == nil {
                    VStack(spacing: 0) {
                        NavigationBarView()
                            .padding(.horizontal, 15)
                            .padding(.bottom)
                            .padding(.top, geometry.safeAreaInsets.top)
                            .background(Color.white)
                            .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                        
                        ScrollView(.vertical, showsIndicators: false, content: {
                            VStack(spacing: 0) {
                                FeaturedTabView()
                                    .padding(.vertical, 20)
                                    .scaledToFit()
                                
                                CategoryGridView()
                                
                                TitleView(title: "Helmet")
                                
                                LazyVGrid(columns: gridLayout, spacing: 15) {
                                    ForEach(products) { item in
                                        ProductItemView(product: item)
                                            .onTapGesture {
                                                feedback.impactOccurred()
                                                withAnimation(.easeOut) {
                                                    shop.selectedProduct = item
                                                    shop.showingProduct = true
                                                }
                                            }
                                    }
                                }
                                .padding(15)
                                
                                TitleView(title: "Brands")
                                
                                BrandGridView()
                                
                                FooterView()
                                    .padding(.horizontal)
                            }
                        })
                    }
                    .background(colorBackground.ignoresSafeArea(.all, edges: .all))
                } else {
                    ProductDetailView()
                        .padding(.top, geometry.safeAreaInsets.top)
                }
            }
            .ignoresSafeArea(.all, edges: .top)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
