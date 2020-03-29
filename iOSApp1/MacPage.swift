//
//  MacPage.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import SwiftUI

struct MacPage: View {
    var body: some View {
        List{
            MacRow(Macs: Product(Image: "macbook-air", Name: "Macbook Air"))
                .previewLayout(.fixed(width:300 , height:70))
            MacRow(Macs: Product(Image: "mbp13touch", Name: "Macbook Pro"))
            .previewLayout(.fixed(width:300 , height:70))
        }
    }
}

struct MacPage_Previews: PreviewProvider {
    static var previews: some View {
        MacPage()
    }
}
