//
//  AssociatesViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 11/25/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

class AssociatesViewController: UIViewController {

    @IBOutlet var associateNavigation: UINavigationItem!
    @IBOutlet var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.isEditable = false
        textView.dataDetectorTypes = UIDataDetectorTypes.all
        associateNavigation.title = listOfAssociates[associatesRow].name
        textView.text = "\nPhone Number: " + listOfAssociates[associatesRow].phoneNumber! + "\n\n\nAddress: " + listOfAssociates[associatesRow].address! + "\n\n\nWebsite: " + listOfAssociates[associatesRow].website!

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
