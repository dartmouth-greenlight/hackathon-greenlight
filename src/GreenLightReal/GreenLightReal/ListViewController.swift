//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit
var socialList = ["F004GD3":"Michael Mauricio", "F003XS5":"Steven Mendley"]

func getList(nameList : Dictionary<String,String>) -> String {
    var list = ""
    for id in nameList.keys{
        list.append("\(nameList[id]) \n")
    
    }
    return list
}

class ListViewController: UIViewController{
    @IBOutlet var listLabel: UILabel!
    @IBAction func socialListButton(_ sender: Any) {
        listLabel.text = getList(nameList: socialList);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        listLabel.text = ""
        
    }
    
    
    
}
