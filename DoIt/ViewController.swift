//
//  ViewController.swift
//  DoIt
//
//  Created by Kees van der vlis on 17/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = MakeTasks()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
              cell.textLabel?.text = "❗️\(task.name)"
        } else {
              cell.textLabel?.text = task.name
        }
      
        return cell
    }

    func MakeTasks() -> [Task] {
        let task1  = Task()
        task1.name = "Walk the Dog"
        task1.important = true

        let task2  = Task()
        task2.name = "Buy Cheese"
        task2.important = true

        let task3  = Task()
        task3.name = "Mow the Lawn"
        task3.important = false

        return [task1, task2, task3]
    }

}

