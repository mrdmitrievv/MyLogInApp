//
//  ViewController.swift
//  MyLogInApp
//
//  Created by Артём Дмитриев on 10.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func unwindSegue(_ sender: UIStoryboardSegue) {
        print("The unwiding segue")        
    }

}

