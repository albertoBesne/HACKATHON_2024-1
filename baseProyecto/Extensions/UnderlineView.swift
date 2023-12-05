//
//  UnderlineView.swift
//  baseProyecto
//
//  Created by CEDAM16 on 05/12/23.
//

import Foundation
import SwiftUI

extension View {
    func underlineTextField() -> some View {
        self
            .padding(.vertical, 10)
            .overlay(Rectangle().frame(height: 2).padding(.top, 35))
            .foregroundColor(Color(.lightGray).opacity(0.6))
            .padding(10)
    }
}
