//
//  TableViewController.swift
//  TableView
//
//  Created by amrit on 12/9/15.
//  Copyright © 2015 Amrit. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    
    let TowerImage = ["burj.jpg","Eiffel.jpg","empire.jpg","kingdomtower.jpg","Taipei.jpg","burj.jpg","Eiffel.jpg","empire.jpg","kingdomtower.jpg","Taipei.jpg"]
    
    let TowerName = ["Burj Khalifa","Eiffel Tower","Empire State Building","Kingdom Tower","Taipei 101","Burj Khalifa","Eiffel Tower","Empire State Building","Kingdom Tower","Taipei 101"]
    
    let TowerLocation = ["Dubai, UAE","Paris, France","New York, USA","Jeddah, Saudi Arabia","Taipei, Taiwan","Dubai, UAE","Paris, France","New York, USA","Jeddah, Saudi Arabia","Taipei, Taiwan"]

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return TowerName.count;
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCellWithIdentifier("Cell") as! TableViewCell
        
        
        cell.TowerName.text = TowerName[indexPath.row]
        cell.TowerLocation.text = TowerLocation[indexPath.row]
        let towerImageName = UIImage(named: TowerImage[indexPath.row])
        cell.TowerImage.image = towerImageName
        
        return cell
        
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if(segue.identifier == "showDetail"){
            
            let vc = segue.destinationViewController as! DetailViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow{
            
                let towerName = TowerName[indexpath.row] as String
                vc.tempTowerName = towerName;
                
                let towerLocation = TowerLocation[indexpath.row] as String
                vc.tempTowerLocation = towerLocation;
                
                let towerImage = TowerImage[indexpath.row] as String
                vc.tempTowerImage = towerImage;
                
            }
        
            
        }
    }
    

    
}




















