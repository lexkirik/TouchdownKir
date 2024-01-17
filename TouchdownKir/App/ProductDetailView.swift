//
//  ProductDetailView.swift
//  TouchdownKir
//
//  Created by Test on 25.09.23.
//

import SwiftUI

struct ProductDetailView: View {
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        GeometryReader { geometry in
            VStack(alignment: .leading, spacing: 5) {
                //navbar
                NavigationBarDetailView()
                    .padding(.horizontal)
                    .padding(.top, geometry.safeAreaInsets.top)
                //header
                HeaderDetailView()
                    .padding(.horizontal)
                //detail top part
                TopPartDetailView()
                    .padding(.horizontal)
                    .zIndex(1)
                //detail bottom part
                VStack(alignment: .center, spacing: 0) {
                    //ratings + size
                    RatingsSizesDetailView()
                        .padding(.top, -20)
                        .padding(.bottom, 10)
                    //description
                    ScrollView(.vertical, showsIndicators: false) {
                        Text(shop.selectedProduct?.description ?? sampleProduct.description)
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.leading)
                    }
                    //quantity + favourite
                    QuantityFavouriteDetail_View()
                        .padding(.vertical, 10)
                    //add to cart
                    AddToCartDetailView()
                        .padding(.bottom, 20)
                }
                .padding(.horizontal)
                .background(Color.white
                    .clipShape(CustomShapeView())
                    .padding(.top, -105))

            }
            .zIndex(0)
            .ignoresSafeArea(.all, edges: .all)
            .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                              green: shop.selectedProduct?.green ?? sampleProduct.green,
                              blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
            .ignoresSafeArea(.all, edges: .all))
        }
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
    }
}
