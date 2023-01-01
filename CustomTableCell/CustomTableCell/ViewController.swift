//
//  ViewController.swift
//  CustomTableCell
//
//  Created by Amit Ninawe on 22/12/22.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{

 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        myCustomCellTable.dataSource = self
        myCustomCellTable.delegate = self
        
    }
    
    @IBOutlet weak var myCustomCellTable: UITableView!
    
       var myarrayOfDict : [String] =  ["First","Second","Third","Fourth","Fifth","Sixth"]
       
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myarrayOfDict.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(myarrayOfDict[indexPath.row])
    }
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! CustomTableViewCell
        cell.txtLabel?.text = myarrayOfDict[indexPath.row]
        cell.buttonToTap?.setTitle(myarrayOfDict[indexPath.row], for: .normal)
        return cell
        
    }
    
    
}

    
