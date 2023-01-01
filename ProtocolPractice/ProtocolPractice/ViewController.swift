//
//  ViewController.swift
//  ProtocolPractice
//
//  Created by Amit Ninawe on 20/12/22.
//

import UIKit

class ViewController: UIViewController, TableViewDataSourceDelegate {

    @IBOutlet weak var tableView: UITableView!
    var tableViewDataSource: TableViewDataSource?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let data = [["a","b","c","d"]]
        self.tableViewDataSource = TableViewDataSource(data: data, delegate: self)
        self.tableView.dataSource = self.tableViewDataSource
        
    }
    
    func cellForRow(at indexpath: IndexPath) -> UITableViewCell {
        var identifier = "subtitle"
        if(indexpath.row + 1) % 2 == 0{
            identifier = "rightDetail"
        }
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: identifier, for: indexpath)
        return  cell
    }

    func design(cell: UITableViewCell, for data: Any) {
        cell.textLabel?.text = (data as? String) ?? ""
        cell.detailTextLabel?.text = (data as? String) ?? ""
    }
}

