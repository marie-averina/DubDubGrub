//
//  FirstNameAvatarView.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 05.05.2023.
//

import SwiftUI

struct FirstNameAvatarView: View {
    
    var name: String
    
    var body: some View {
        VStack {
            AvatarView(size: 64)
            
            Text(name)
                .bold()
                .lineLimit(1)
                .minimumScaleFactor(0.75)
        }
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        FirstNameAvatarView(name: "lalala")
    }
}
