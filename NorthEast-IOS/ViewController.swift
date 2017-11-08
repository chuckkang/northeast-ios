//
//  ViewController.swift
//  NorthEast-IOS
//
//  Created by Chucks Mac Book on 11/8/17.
//  Copyright © 2017 Chucks Mac Book. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func directionPressed(_ sender: UIButton) {
        // this will direct to the correct tableView
        performSegue(withIdentifier: "directionSegue", sender: sender.titleLabel?.text)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let navigationController = segue.destination as! DirectionTableViewController
        navigationController.direct = sender as? String
        //from this navigationController.topViewController cast as the additemtableviewControllers.
//        let directionTVC = navigationController.topViewController as! DirectionTableViewController
        //from this controller get the delegate and set it up as the instance of teh THIS view controller.
        //directionTVC.delegate = self
        print(sender, "this is the dest")
    }
    
    @IBAction func returnTo(segue: UIViewController){
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

