//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit

public var socialList = ["F004GD3":"Michael Mauricio", "F003XS5":"Steven Mendley" ]
public var redList = ["F004H39" : "Tucker Simpson", "F004hb2": "Jack Desmond"]



func getList(listName : Dictionary<String, String>) -> [String]{
    var nameList = [String]()
    var name = ""
    for key in listName.keys{
        name = listName[key] ?? "Mikey"
        nameList.append(name)
    }
    return nameList
}

var names = ["names"]



class ListViewController: UIViewController{
    
    @IBOutlet var tableView: UITableView!
    @IBAction func Green(_ sender: Any) {
        names = getList(listName: socialList)
    }
    
    @IBAction func Red(_ sender: Any) {
        names = getList(listName: redList)
    }
    

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
       
    }
    
    
    
    
    
    
    
}
extension ListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
}

extension ListViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
}
