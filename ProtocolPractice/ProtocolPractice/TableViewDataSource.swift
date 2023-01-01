//
//  TableViewController.swift
//  ProtocolPractice
//
//  Created by Amit Ninawe on 20/12/22.
//

import UIKit

protocol TableViewDataSourceDelegate{
    func cellForRow(at indexpath: IndexPath)-> UITableViewCell
    func design(cell: UITableViewCell, for data: Any )
}

protocol TableViewMultipleSelectionDataSourceProtocol{
    var data :[[Any]]! { get set }
    
}

  

class TableViewDataSource: NSObject , UITableViewDataSource ,  TableViewMultipleSelectionDataSourceProtocol{
    
    internal var data: [[Any]]!
    var delegate: TableViewDataSourceDelegate?
    
    init(data:[[Any]],delegate: TableViewDataSourceDelegate){
        super.init()
        self.data = data
        self.delegate = delegate
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let rowArray = data[section]
        return rowArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let delegate = delegate else {
            let cell = UITableViewCell()
            return cell
        }
        let cell = delegate.cellForRow(at: indexPath)
        let rowArray = data[indexPath.section]
        delegate.design(cell: cell, for: rowArray[indexPath.row])
        return cell
    }
        
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    
}
