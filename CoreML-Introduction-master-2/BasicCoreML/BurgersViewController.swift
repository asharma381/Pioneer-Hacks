//
//  BurgersViewController.swift
//  BasicCoreML
//
//  Created by Aditya Sharma on 3/17/18.

import UIKit
import SafariServices
import MapKit
class BurgersViewController: UIViewController {

    @IBAction func click(_ sender: Any) {
        let latitude:CLLocationDegrees = 37.322611
        let longitude:CLLocationDegrees = -122.024069
        
        let regionDistance:CLLocationDistance = 1000;
        let coordinates = CLLocationCoordinate2DMake(latitude, longitude)
        let regionSpan = MKCoordinateRegionMakeWithDistance(coordinates, regionDistance, regionDistance)
        //./Users/Aditya/Downloads/CoreML-Introduction-master-2/BasicCoreML/BurgersViewController.swift
        let options = [MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: regionSpan.center), MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: regionSpan.span)]
        
        let placemark = MKPlacemark(coordinate: coordinates)
        let mapItem = MKMapItem(placemark: placemark)
        mapItem.name = "Counter"
        mapItem.openInMaps(launchOptions: options)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
