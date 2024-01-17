//
//  BrandGridView.swift
//  TouchdownKir
//
//  Created by Test on 25.09.23.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, pinnedViews: []) {
                ForEach(brands) { item in
                    BrandItemView(brand: item)
                }
            }
            .frame(height: 200)
            .padding(15)
        }
    }
}

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
    }
}
