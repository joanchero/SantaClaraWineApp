//
//  DetailViewController.swift
//  SantaClaraValleyWineApp
//
//  Created by Naghmeh on 11/8/15.
//  Copyright © 2015 SCVWAA. All rights reserved.
//

import UIKit
import MapKit
class DetailViewController: UIViewController, MKMapViewDelegate {

    
    
    @IBOutlet var navigationBar: UINavigationBar!
    @IBOutlet var textView: UITextView!
    @IBOutlet var logo: UIImageView!
    @IBOutlet var wineryMap: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationBar.topItem?.title = listOfWineries[wineriesRow].name
        textView.isEditable = false
        textView.dataDetectorTypes = UIDataDetectorTypes.all
        
        textView.text = "Hours of Operations: " + listOfWineries[wineriesRow].hours + "\n\nAddress: " + listOfWineries[wineriesRow].address + "\n\nWebsite: " + listOfWineries[wineriesRow].websiteOrEmail + "\n\nPhone Number: " + listOfWineries[wineriesRow].phoneNumber + "\n\nDescription: " + listOfWineries[wineriesRow].description
        logo.image = UIImage(named: listOfWineries[wineriesRow].picture)
        
        //Map setup
        let latitude: CLLocationDegrees = Double(listOfWineries[wineriesRow].latitude)!
        let longitude: CLLocationDegrees = Double(listOfWineries[wineriesRow].longitude)!
        let latDelta: CLLocationDegrees = 0.01
        let lonDelta: CLLocationDegrees = 0.01
        let span: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, lonDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let region: MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        wineryMap.setRegion(region, animated: true)
        
        //annotation on the map
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = listOfWineries[wineriesRow].name
        wineryMap.addAnnotation(annotation)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        self.textView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
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
