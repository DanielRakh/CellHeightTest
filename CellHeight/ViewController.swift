//
//  ViewController.swift
//  CellHeight
//
//  Created by Daniel on 3/9/15.
//  Copyright (c) 2015 Daniel Rakhamimov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var arr = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for _ in 1...10 {
            
            arr.append("This is an amount of text.")
            arr.append("This is an even larget amount of text. This should move to other lines of the label and mace the cell grow.")
            arr.append("This is an even larger amount of text. That should move to other lines of the label and make the cell grow. Crossing fingers. This is an even larger amount of text. That should move to other lines of the label and make the cell grow. Crossing fingers.")
        }
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 45.0

    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! TstTableViewCell
        cell.tstLabel.text = arr[indexPath.row]
        return cell
    }

}

