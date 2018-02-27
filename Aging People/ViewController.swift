//
//  ViewController.swift
//  Aging People
//
//  Created by Noel Mendoza on 1/16/18.
//  Copyright © 2018 Noel Mendoza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let oldPeople = [ "Kobe", "Barack", "Hilary", "John", "Kevin", "Isabeth", "Vick", "Steph", "Tom", "Albert", "Franco", "Sarah" ]
    
    @IBOutlet weak var myTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}

extension ViewController: UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return oldPeople.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyAge", for: indexPath)
        cell.textLabel?.text = oldPeople[indexPath.row]
        
        let age = arc4random_uniform(90) + 5
        cell.detailTextLabel?.text = "\(age) years old"
        return cell
    }
    
    
}

