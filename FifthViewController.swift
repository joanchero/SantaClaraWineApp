//
//  FifthViewController.swift
//  THIS IS THE ASSOCIATES PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/17/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit

var associatesRow = 0
class FifthViewController: UIViewController, UITableViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listOfAssociates.count
    }
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "associateCell")
        
        cell!.textLabel?.text = listOfAssociates[indexPath.row].name
        cell!.detailTextLabel?.text = listOfAssociates[indexPath.row].address
        cell!.backgroundColor = UIColor.black
        cell!.textLabel?.textColor = UIColor.white
        cell!.detailTextLabel?.textColor = UIColor.white
        
        return cell!
    }
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath)->IndexPath?
    {
        associatesRow = indexPath.row
        print(associatesRow)
        return indexPath
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
