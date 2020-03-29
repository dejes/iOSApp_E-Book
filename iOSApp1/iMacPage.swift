//
//  iMacPage.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import SwiftUI

struct iMacPage: View {
    var body: some View {
        //navigationBarTitle(WhichMac)
        List{
            MacRow(Macs: Product(Image: "imac-21", Name: "iMac"))
                .previewLayout(.fixed(width:300 , height:70))
            MacRow(Macs: Product(Image: "imacpro-27", Name: "iMac Pro"))
            .previewLayout(.fixed(width:300 , height:70))
        }

    }
    
}

struct iMacPage_Previews: PreviewProvider {
    static var previews: some View {
        iMacPage()
    }
}
