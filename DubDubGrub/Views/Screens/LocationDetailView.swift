//
//  LocationDetailView.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 05.05.2023.
//

import SwiftUI

struct LocationDetailView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        VStack(spacing: 16) {
            BannerImageView(imageName: "default-banner-asset")
            
            HStack(alignment: .center) {
                AddressView(address: "mappin.and.ellipse")
                Spacer()
            }
            .padding(.horizontal)
            
            DescriptionView(text: "It's a description of the place")
            
            ZStack() {
                Capsule()
                    .frame(height: 80)
                    .foregroundColor(Color(uiColor: .secondarySystemBackground))
                
                HStack(spacing: 28) {
                    
                    Button {
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "location.fill")
                    }
                    
                    Link(destination: URL(string: "https://www.apple.com")!) {
                        LocationActionButton(color: .brandPrimary, imageName: "network")
                    }
                    
                    Button {
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "phone.fill")
                    }
                    
                    Button {
                    } label: {
                        LocationActionButton(color: .brandPrimary, imageName: "person.fill.checkmark")
                    }
                }
            }
            .padding(.horizontal)
            
            Text("Who' s Here?")
                .font(.title2)
                .bold()
                .padding(.vertical)
            
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(1..<14) { _ in
                        FirstNameAvatarView(name: "Ivanov Ivan")
                    }
                }
            }
        }
        .navigationTitle("Place Name")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LocationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetailView()
        }
    }
}

struct LocationActionButton: View {
    
    var color: Color
    var imageName: String
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(color)
                .frame(width: 60, height: 60)
            
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .foregroundColor(.white)
                .frame(width: 30, height: 30)
        }
    }
}

struct BannerImageView: View {
    
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(height: 120)
    }
}

struct AddressView: View {
    
    var address: String
    
    var body: some View {
        Label("123 Main Street", systemImage: address)
            .font(.caption)
            .foregroundColor(.secondary)
    }
}

struct DescriptionView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .lineLimit(3)
            .minimumScaleFactor(0.75)
            .frame(height: 70)
            .padding(.horizontal)
    }
}
