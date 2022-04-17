//
//  Student.swift
//  GreenLightReal
//
//  Created by Steven Mendley on 4/17/22.
//

import Foundation

class Student{
    
    var name: String
    var netID: String
    init(){
        
        name = "no name given"
        netID = "no net ID given"
        
    }
    init(name: String, netID: String){
        
        self.name = name; self.netID = netID
        
    }
    
    public var description: String { return name}
    
}

