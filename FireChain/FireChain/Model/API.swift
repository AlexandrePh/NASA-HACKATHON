//
//  teste.swift
//  FireChain
//
//  Created by Alexandre Philippi on 20/10/18.
//  Copyright © 2018 free. All rights reserved.
//

import Foundation
protocol APIDelegate{
    
}

class API {
    func fetchIncidents(){
        let url = URL(string: "")!
        
        let task = URLSession.shared.dataTask(with: url) {(data, response, error) in
            guard let data = data else { return }
         
        }
        
        task.resume()
    }
}
