//
//  BuyingiPadViewController.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import UIKit
import SwiftUI
var iPadArr=["ipad-10-2","ipad-air","ipad-mini","ipad-pro"]
class BuyingiPadViewController: UIViewController {

    @IBOutlet weak var PhoneImg: UIImageView!
       @IBOutlet weak var PhoneName: UILabel!
       var name:String?
       var num:Int?
       override func viewDidLoad() {
           super.viewDidLoad()
           if let name=name{
               PhoneImg.image=UIImage(named: name)
               PhoneName.text=name
               title=name
           }
           // Do any additional setup after loading the view.
       }
       

    @IBSegueAction func ToSafariView(_ coder: NSCoder) -> UIViewController? {
        var www:String?
        www="https://www.apple.com/tw/shop/buy-ipad/"+iPadArr[num!]
        return UIHostingController(coder: coder, rootView: SafariView(url:URL(string:www!)!))
   
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
