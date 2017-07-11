//
//  ThirdViewController.swift
//  THIS IS THE WINERIES PAGE
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 10/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
var wineriesRow = 0
class ThirdViewController: UIViewController, UITableViewDelegate{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print(wineriesRow)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listOfWineries.count
    }
    func tableView(_ tableView: UITableView, cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")

        cell!.textLabel?.text = listOfWineries[indexPath.row].name
        cell!.detailTextLabel?.text = listOfWineries[indexPath.row].hours
        cell!.backgroundColor = UIColor.black
        cell!.textLabel?.textColor = UIColor.white
        cell!.detailTextLabel?.textColor = UIColor.white
        
        //let pict = listOfWineries[indexPath.row].picture!

//        //cell?.imageView?.contentMode = UIViewContentMode.ScaleToFill
//        //cell?.imageView?.clipsToBounds = true
        //cell?.imageView?.image = UIImage(named: pict)
        
        return cell!
    }
    
    
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath)->IndexPath?
    {
        wineriesRow = indexPath.row
        print(wineriesRow)
        return indexPath
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
