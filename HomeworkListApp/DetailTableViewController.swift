//
//  DetailTableViewController.swift
//  HomeworkListApp
//
//  Created by Shun-Ching, Chou on 2019/4/18.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class DetailTableViewController: UITableViewController {
    
    @IBOutlet weak var todoTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    var todo: String?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        todo = todoTextField.text!
    }
 
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if todoTextField.text?.isEmpty == false {
            return true
        } else {
            let alertController = UIAlertController(title: "Error", message: "Input error", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            present(alertController, animated: true, completion: nil)
            return false
        }
    }

    @IBAction func closeKeyboard(_ sender: Any) {
    }
}
