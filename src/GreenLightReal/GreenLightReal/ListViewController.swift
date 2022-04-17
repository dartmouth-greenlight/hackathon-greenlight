//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit
var socialList = Set<String>()
class ListViewController: UIViewController{
    @IBOutlet var listLabel: UILabel!
    @IBAction func socialListButton(_ sender: Any) {
        listLabel.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listLabel.text = ""
        
    }
    
    
}
