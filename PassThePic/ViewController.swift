//
//  ViewController.swift
//  PassThePic
//
//  Created by Dan Lindsay on 2017-01-31.
//  Copyright © 2017 Dan Lindsay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let reuseIdentifier = "tableViewCell"
    var dummyObjects = ["hi", "there", "I'm", "awesome!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var newCell = UITableViewCell()
        
        if let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier) {
            newCell = cell
        }
        newCell.textLabel?.text = dummyObjects[indexPath.row]
        
        return newCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyObjects.count
    }


}

