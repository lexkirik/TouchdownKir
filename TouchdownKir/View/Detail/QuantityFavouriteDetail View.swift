//
//  QuantityFavouriteDetail View.swift
//  TouchdownKir
//
//  Created by Test on 25.09.23.
//

import SwiftUI

struct QuantityFavouriteDetail_View: View {
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                feedback.impactOccurred()
                counter += 1
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }

        }
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

struct QuantityFavouriteDetail_View_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetail_View()
    }
}
