//
//  CircleImage.swift
//  TutorialApp
//
//  Created by 藤本幹也 on 2021/07/08.
//  画像を円形に加工して画面に表示する
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
