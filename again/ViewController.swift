//
//  ViewController.swift
//  again
//
//  Created by Andrew Lutinskyi on 24.01.2018.
//  Copyright © 2018 Andrew Lutinskyi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITableView"
        tableView.dataSource = self
        tableView.delegate = self
        let nibName = UINib(nibName: "AreasTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "areasOfActivity")
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "areasOfActivity") as! AreasTableViewCell
        cell.commonInit(imageName: "logo", nameOfCell: "Films", numberOf: "2 of 12")
        return cell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

