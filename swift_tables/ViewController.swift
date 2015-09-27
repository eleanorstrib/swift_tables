//
//  ViewController.swift
//  swift_tables
//
//  Created by Eleanor Stribling on 9/26/15.
//  Copyright (c) 2015 eleanorstrib. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    //Define model
    let canadianPT = [
        "Newfoundland & Labrador",
        "Prince Edward Island",
        "Nova Scotia",
        "New Brunswick",
        "Quebec",
        "Ontario",
        "Manitoba",
        "Saskatchewan",
        "Alberta",
        "British Columbia",
        "Nunavut",
        "Yukon",
        "Northwest Territories"
    ]
    
    // Get number of rows to pass to the view
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println(self.canadianPT.count)
        return self.canadianPT.count
    }
    
    // Instruct the view how to display the data
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //dequeue cell from table
        let cell = tableView.dequeueReusableCellWithIdentifier("CdnPTCell") as! UITableViewCell
        //tell the dequeued cell what data to show
        cell.textLabel?.text = self.canadianPT[indexPath.row]
        //return the updated cell
        println(cell)
        return cell
    }
    
}

