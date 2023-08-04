//
//  LocationListCell.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 04.05.2023.
//

import SwiftUI

struct LocationCell: View {
    
    var body: some View {
        HStack {
            Image("default-square-asset")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .padding(.vertical, 8)
            
            VStack(alignment: .leading) {
                Text("Spot name")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .minimumScaleFactor(0.75)
                
                HStack {
                    ForEach(1..<6) { _ in
                        AvatarView(size: 35)
                    }
                }
            }
            .padding(.leading)
        }
    }
}

struct LocationListCell_Previews: PreviewProvider {
    static var previews: some View {
        LocationCell()
    }
}

