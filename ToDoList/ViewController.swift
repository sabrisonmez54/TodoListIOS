//
//  ViewController.swift
//  ToDoList
//
//  Created by Sabri on 1/10/19.
//  Copyright © 2019 Sabri. All rights reserved.
//

import UIKit


 var list = ["Buy milk", "Run 2 miles" , "do homework at 8 "]

class ViewController: UIViewController, UITableViewDelegate , UITableViewDataSource{
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = list[indexPath.row]
        
        return(cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        
        if (editingStyle == UITableViewCell.EditingStyle.delete){
        
            list.remove(at: indexPath.row)
            myTableView.reloadData()
            
        }
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myTableView.reloadData()
     }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

