//
//  BuyingViewController.swift
//  iOSApp1
//
//  Created by Jack Liu on 2020/3/29.
//  Copyright © 2020 piyen. All rights reserved.
//

import UIKit
import SwiftUI

class BuyingViewController: UIViewController {
    
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
    

    @IBSegueAction func ToWebView(_ coder: NSCoder) -> UIViewController? {
        ProductNum=num
        return UIHostingController(coder: coder, rootView: WebView())
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        let destinationController = segue.destination as? UIHostingController<WebView>
        destinationController?.
               
    }*/
    

}
