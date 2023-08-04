//
//  View+Ext.swift
//  DubDubGrub
//
//  Created by Мария Аверина on 06.05.2023.
//

import SwiftUI

extension View {
    func profileNameStyle() -> some View {
        self.modifier(ProfileNameText())
    }
}
