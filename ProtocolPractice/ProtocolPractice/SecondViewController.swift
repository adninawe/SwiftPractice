//
//  SecondViewController.swift
//  ProtocolPractice
//
//  Created by Amit Ninawe on 22/12/22.
//

import UIKit

class User: NSObject{
    var fname: String
    var lname: String
    
    init(fname: String, lname: String) {
        self.fname = fname
        self.lname = lname
    }
}

class SecondViewController: UIViewController, TableViewDataSourceDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    func cellForRow(at indexpath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "User", for: indexpath)
        return cell
    }
    func design(cell: UITableViewCell, for data: Any) {
        guard let user = data as? User else{
            return
        }
        cell.textLabel?.text = user.fname
        cell.detailTextLabel?.text = user.lname
    }
    
    
    var tableViewDataSource: TableViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let user1 = User(fname: "Amit", lname: "Ninawe")
        let user2 = User(fname: "Swapnil", lname: "Sahare")
        let user3 = User(fname: "Bharat", lname: "Silavat")
        let user4 = User(fname: "Uday", lname: "Patil")
        let data = [[user1, user2, user3, user4]]
        self.tableViewDataSource = TableViewDataSource(data: data, delegate: self)
        self.tableView.dataSource = self.tableViewDataSource
        // Do any additional setup after loading the view.
    }
}
