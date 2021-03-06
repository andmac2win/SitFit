//
//  SeatDetailViewController.swift
//  SitFit
//
//  Created by William Judd on 2/6/15.
//  Copyright (c) 2015 William Judd. All rights reserved.
//

import UIKit

class SeatDetailViewController: UIViewController {

    @IBOutlet weak var seatImageView: UIImageView!
    @IBOutlet weak var seatNameLabel: UILabel!
   
        override func viewDidLoad() {
        super.viewDidLoad()

    seatNameLabel.text = FeedData.mainData().selectedSeat?["name"] as? String
    
        let userImageFile = FeedData.mainData().selectedSeat?["image"] as PFFile
        
        userImageFile.getDataInBackgroundWithBlock {
            (imageData: NSData!, error: NSError!) -> Void in
            
            if error == nil {
                
                let image = UIImage(data:imageData)
                self.seatImageView.image = image
        
        
    }
    
            }
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
