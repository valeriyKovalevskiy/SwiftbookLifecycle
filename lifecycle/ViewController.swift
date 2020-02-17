//
//  ViewController.swift
//  lifecycle
//
//  Created by Valeriy Kovalevskiy on 2/17/20.
//  Copyright © 2020 v.kovalevskiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.someProperties = ""
        }
    }
}

