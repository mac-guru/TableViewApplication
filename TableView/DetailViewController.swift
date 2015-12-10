//
//  DetailViewController.swift
//  TableView
//
//  Created by amrit on 12/9/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var TowerDetailImage: UIImageView!
    @IBOutlet var ToweDetailName: UILabel!
    @IBOutlet var TowerDetailLocation: UILabel!
    

    var tempTowerImage:String!
    var tempTowerName:String!
    var tempTowerLocation:String!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        ToweDetailName.text = tempTowerName;
        TowerDetailLocation.text = tempTowerLocation;
        TowerDetailImage.image = UIImage(named: tempTowerImage)
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   
}
