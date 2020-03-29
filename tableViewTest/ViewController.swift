//
//  ViewController.swift
//  tableViewTest
//
//  Created by cihanbas on 28.03.2020.
//  Copyright © 2020 cihanbas. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
  
    
    var simpsonList = [Simpsons]()
    var choosenSimpson : Simpsons?
    @IBOutlet weak var tableVC: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableVC.dataSource = self
        tableVC.delegate = self
        let holmer = Simpsons(simpsonName: "holmer", simpsonAge: 43, simpsonImage: UIImage(named: "homer")!)
        let marge = Simpsons(simpsonName: "marge", simpsonAge: 43, simpsonImage: UIImage(named: "marge")!)
        let bart = Simpsons(simpsonName: "bart", simpsonAge: 12, simpsonImage: UIImage(named: "bart")!)
        let lisa = Simpsons(simpsonName: "lisa", simpsonAge: 32, simpsonImage: UIImage(named: "lisa")!)
        let maggie = Simpsons(simpsonName: "maggie", simpsonAge: 3, simpsonImage: UIImage(named: "maggie")!)
        simpsonList.append(holmer)
        simpsonList.append(bart)
        simpsonList.append(marge)
        simpsonList.append(lisa)
        simpsonList.append(maggie)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonList[indexPath.row].name
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(simpsonList[indexPath.row].name)
          choosenSimpson = simpsonList[indexPath.row]
        self.performSegue(withIdentifier: "detailID", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailID"{
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.simpson = choosenSimpson
        }
    }

}

