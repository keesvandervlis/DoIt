//
//  CompleteTaskViewController.swift
//  DoIt
//
//  Created by Kees van der vlis on 19/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {

    var task = Task()
    var previousVC = TasksViewController()
    
    @IBOutlet weak var LabelTask: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        LabelTask.text = task.name
        if task.important {
            LabelTask.text = "❗️\(task.name)"
        }
        else {
            LabelTask.text = task.name
            
        }
        // Do any additional setup after loading the view.
    }

    @IBAction func CompleteTapped(_ sender: Any) {
        previousVC.tasks.remove(at: previousVC.selectedRow)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }




}
