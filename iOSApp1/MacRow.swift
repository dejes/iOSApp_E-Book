//
//  MacRow.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import SwiftUI

struct MacRow: View {
    var Macs:Product
    var body: some View {
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        HStack{
            Image(Macs.Image).resizable().scaledToFit().frame(width: 80, height: 150).clipped()
            VStack(alignment: .center){
                Text(Macs.Name)
                
            }
            Spacer()
        }
    }
}

struct MacRow_Previews: PreviewProvider {
    static var previews: some View {
        MacRow(Macs: Product(Image: "String", Name: "String"))
    }
}
