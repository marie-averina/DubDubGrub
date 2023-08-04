//
//  LocationListView.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 04.05.2023.
//

import SwiftUI

struct LocationListView: View {
    var body: some View {
        ZStack {
            NavigationView {
                List{
                    ForEach(0..<10) { item in
                        NavigationLink(destination: LocationDetailView()) {
                            LocationCell()
                        }
                    }
                }
                .navigationTitle("Grub Spots")
            }
        }
    }
}

struct LocationListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationListView()
    }
}
