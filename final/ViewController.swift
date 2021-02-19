//
//  ViewController.swift
//  final
//
//  Created by Adarsh Singh on 28/11/1942 Saka.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.register(UINib(nibName: "myTableViewCell", bundle: nil), forCellReuseIdentifier: "myTableViewCell" )
    }
    
}
  
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myTableViewCell", for: indexPath) as! myTableViewCell
        return cell
    }
    
    
}

extension ViewController:
    UITableViewDelegate{
    
}

