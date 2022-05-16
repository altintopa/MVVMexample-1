//
//  ViewController.swift
//  MVVMexample-1
//
//  Created by Ahmet WOW on 16/05/2022.
//
/// Source : https://www.youtube.com/watch?v=nWSHWWV8Nas

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tblView: UITableView!
    
    var userArr = [
        Person(firstName: "Alexander", lastName: "Maxim", gender: "male", age: 34, height: 168),
        Person(firstName: "Henry", lastName: "Ford", gender: "male", age: 61, height: 187),
        Person(firstName: "Emily", lastName: "Cordoba", gender: "female", age: 32, height: 172),
        Person(firstName: "Susan", lastName: "Silva", gender: "female", age: 40, height: 164)
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.register(UINib(nibName: "tblViewCell", bundle: nil), forCellReuseIdentifier: "cellID")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblView.dequeueReusableCell(withIdentifier: "cellID", for: indexPath) as! tblViewCell
        let model = userArr[indexPath.row]
        
        cell.ConfigureCell(with: CellViewModel(firstName: model.firstName, lastName: model.lastName, age: model.age))
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tblView.deselectRow(at: indexPath, animated: true)
    }
    
}

