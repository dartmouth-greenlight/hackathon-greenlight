//
//  ViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Green(_ sender: Any) {
        list = socialList
    }
    
    @IBAction func Red(_ sender: Any) {
        list = redList
    }
    
}
