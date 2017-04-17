//
//  addTaskViewController.swift
//  DoIt
//
//  Created by Kees van der vlis on 17/04/2017.
//  Copyright © 2017 Kees van der vlis. All rights reserved.
//

import UIKit

class addTaskViewController: UIViewController {

    @IBOutlet weak var taskName: UITextField!
    
    @IBOutlet weak var taskImportant: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func addButtonTapped(_ sender: Any) {
    }
}
