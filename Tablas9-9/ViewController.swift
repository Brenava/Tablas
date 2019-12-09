//
//  ViewController.swift
//  Tablas9-9
//
//  Created by 2020-1 on 9/9/19.
//  Copyright © 2019 Bren. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        
        cell.textLabel!.text = "Holi Mundo \(indexPath.row)"
        
        
        if indexPath.row % 2 == 0{
            cell.backgroundColor = .white
            cell.imageView?.image = UIImage(named: "stich")
        }else{
            cell.backgroundColor = .yellow
            cell.imageView?.image = UIImage(named: "panda")
        }
        
        cell.accessoryType = .checkmark
        
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0  //Altura de las celdas
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print (indexPath.row)
    }
}

