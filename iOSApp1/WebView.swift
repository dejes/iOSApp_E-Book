//
//  WebView.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import SwiftUI
import WebKit

var WebsiteArr=["iphone-8","iphone-8-plus","iphone-xr","iphone-11","iphone-11-pro"]
var num:Int?
struct WebView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<WebView>) -> WKWebView {
        let webView = WKWebView()
        if ProductNum!>=4{
            ProductNum=4
        }
            
         if let url = URL(string: "https://www.apple.com/tw/shop/buy-iphone/"+WebsiteArr[ProductNum!]) {
             let request = URLRequest(url: url)
             webView.load(request)
         }
        
         return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<WebView>) {
        
    }
    
    
    typealias UIViewType = WKWebView
    
}
struct WebView_Previews: PreviewProvider {
    static var previews: some View {
        WebView()
    }
}
