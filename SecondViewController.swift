//
//  SecondViewController.swift
//  THIS IS THE ABOUT US PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/6/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    @IBOutlet var textView: UITextView!

    @IBAction func facebookPage(_ sender: AnyObject) {
        UIApplication.shared.openURL(URL(string: "https://www.facebook.com/santaclaravalleywines")!)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidLayoutSubviews() {
        self.textView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
    }


}

