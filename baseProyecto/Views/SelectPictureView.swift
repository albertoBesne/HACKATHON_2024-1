//
//  SelectPictureView.swift
//  baseProyecto
//
//  Created by CEDAM01 on 06/12/23.
//

import SwiftUI
import PhotosUI

struct SelectPictureView: View {
    @State private var avatarItem: PhotosPickerItem?
        @State private var avatarImage: Image?

    var body: some View {
        VStack {
            PhotosPicker("Select avatar", selection: $avatarItem, matching: .images)
            
            if let avatarImage {
                avatarImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                
            }
        }
        .onChange(of: avatarItem) { _ in
            Task {
                if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
                    if let uiImage = UIImage(data: data) {
                        avatarImage = Image(uiImage: uiImage)
                        return
                    }
                }
                
                print("Failed")
            }
        }
    }
}

#Preview {
    SelectPictureView()
}
