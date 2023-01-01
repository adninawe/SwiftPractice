//
//  ViewController.swift
//  Protocol
//
//  Created by Amit Ninawe on 20/12/22.
//

import UIKit

class ViewController: UIViewController, TableViewDataSourceDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    var tableViewDataSource: TableViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = [["a", "b", "c", "d"]]
        self.tableViewDataSource = TableViewDataSource(data: data, delegate: self)
        self.tableView.dataSource = self.tableViewDataSource
        // Do any additional setup after loading the view.
    }
    
    func cellForRow(at indexPath: IndexPath) -> UITableViewCell {
        var identifier = "subtitle"
        if (indexPath.row + 1) % 2 == 0 {
            identifier = "rightDetail"
        }
        let cell = self.tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        
        return cell
    }
    
    func design(cell: UITableViewCell, for data: Any) {
        cell.detailTextLabel?.text = (data as? String) ?? ""
//        cell.textLabel?.text = (data as? String) ?? ""
    }

}

