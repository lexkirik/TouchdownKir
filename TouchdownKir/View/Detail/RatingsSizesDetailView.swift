//
//  RatingsSizesDetailView.swift
//  TouchdownKir
//
//  Created by Test on 25.09.23.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    let sizes: [String] = ["XS", "S", "M", "L", "XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            //ratings
            VStack(alignment: .leading, spacing: 3) {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .top, spacing: 3) {
                    ForEach(1...5, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                    }
                    }
                }
            }
            Spacer()
            //sizes
            VStack(alignment: .trailing, spacing: 3) {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                
                HStack(alignment: .center, spacing: 5) {
                    ForEach(sizes, id: \.self) { item in
                        Button {
                            
                        } label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(RoundedRectangle(cornerRadius: 5)
                                    .stroke(colorGray, lineWidth: 2))
                    }
                    }

                }
            }
        }
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
    }
}
