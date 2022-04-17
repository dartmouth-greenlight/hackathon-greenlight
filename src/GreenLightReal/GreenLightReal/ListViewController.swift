//
//  ListViewController.swift
//  GreenLightReal
//
//  Created by Mikey Mauricio on 4/17/22.
//

import Foundation
import UIKit

var socialList = ["F004GD3":"Michael Mauricio", "F003XS5":"Steven Mendley"]


/*func getList(nameList : Dictionary<String,String>) -> [String] {
    var list = [String]()
    for id in nameList.keys{
        list.append(<#String#>"\(String(describing: nameList[id])))
    
    }
    return list
}*/

class ListViewController: UIViewController{
    @IBOutlet var tableView: UITableView!
    
    let names = ["Mikey Maurcio", "Steven Mendley"]
    //@IBAction func OpenTable(_ sender: Any) {
        
    //}
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
