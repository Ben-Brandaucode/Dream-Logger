//
//  ViewController.swift
//  dreamLoggerFirebase
//
//  Created by Ben Brandau Brandau on 12/7/20.
//

import UIKit

enum ThoughtCategory: String{
case serious = "serious"
case funny = "funny"
case crazy = "crazy"
case popular = "popular"
}

class mainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var tabelView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delgate = self
        tableView.dataSource = self
        
        
        // Do any additional setup after loading the view.
    }


}

