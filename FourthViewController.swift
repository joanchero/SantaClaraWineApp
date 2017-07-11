//
//  FourthViewController.swift
//  THIS IS THE EVENTS PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textView.isEditable = false
        textView.dataDetectorTypes = UIDataDetectorTypes.all
        
        textView.text = "Association Events: \n\n" + listOfEvents[0].name + "\n" + listOfEvents[0].date + listOfEvents[0].website + "\n\n Member Events:\n" + listOfEvents[1].name + "\n" + listOfEvents[1].date + "\n" + listOfEvents[1].website
           }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
