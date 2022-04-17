//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit
let socialList: Set = ["f004gd3", "f004gd5", "f004ge6"]
func getList(nameList : Set<String>) -> String {
    var list = ""
    for name in nameList{
        list.append("\(name) \n")
    
    }
    return list
}


class ListViewController: UIViewController{
    @IBOutlet var listLabel: UILabel!
   
    
    @IBAction func socialListButton(_ sender: Any) {
        listLabel.text = getList(nameList: socialList)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listLabel.text = ""
        
    }
    
    
    
}
