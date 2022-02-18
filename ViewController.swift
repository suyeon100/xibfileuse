//
//  ViewController.swift
//  xib
//
//  Created by 박수연 on 2022/02/18.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    
    let arr = ["suyeon", "gabe", "minsu"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "suCell", for: indexPath) as! MyTableViewCell


        cell.myLabel.text = arr[indexPath.row]
        cell.myImageView.image = UIImage(named: "appstore")
        cell.myLabel.sizeToFit()

        return cell

    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
        let nibName = UINib(nibName: "MyTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "suCell")



    }


}

