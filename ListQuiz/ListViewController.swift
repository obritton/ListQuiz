//
//  ListViewController.swift
//  ListQuiz
//
//  Created by Ontario Britton on 8/8/17.
//  Copyright © 2017 Ontario Britton. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var totalItems = 4
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return totalItems
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: "List cell", for: indexPath)
    }
    
    @IBAction func pressedAdd(_ sender: UIButton) {
        totalItems = totalItems + 1
        tableView.insertRows(at: [IndexPath.init(row: totalItems-1, section: 0)], with: .right)
    }
}

