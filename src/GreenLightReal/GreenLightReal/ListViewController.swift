//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit
var socialList = ["F004GD3":"Michael Mauricio", "F003XS5":"Steven Mendley"]
class ListViewController: UIViewController{
    @IBOutlet var listLabel: UILabel!
    @IBAction func socialListButton(_ sender: Any) {
        listLabel.text = "Social List";
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listLabel.text = ""
        
    }
    
    
    
}
