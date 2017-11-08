//
//  DirectionTableViewController.swift
//  NorthEast-IOS
//
//  Created by Chucks Mac Book on 11/8/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class DirectionTableViewController: UIViewController {

    @IBOutlet weak var direction: UILabel!
    var direct: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        direction.text = direct!
        print(direct!, "THIS IS THE DIRECTIONS")
        if direct == "East"{
            self.view.backgroundColor = .red
        } else if direct == "West" {
            self.view.backgroundColor = .blue
        } else if direct == "North" {
            self.view.backgroundColor = .green
        } else if direct == "South" {
            self.view.backgroundColor = .purple
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
