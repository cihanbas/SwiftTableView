//
//  DetailViewController.swift
//  tableViewTest
//
//  Created by cihanbas on 28.03.2020.
//  Copyright © 2020 cihanbas. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var labelV: UILabel!
    @IBOutlet weak var age: UILabel!
    var simpson :Simpsons?
    override func viewDidLoad() {
        super.viewDidLoad()
        labelV.text = simpson?.name
        imageV.image = simpson?.image
       
        if let amount = simpson?.age {

            age.text = String(amount)
        }
    }
    
 

}
