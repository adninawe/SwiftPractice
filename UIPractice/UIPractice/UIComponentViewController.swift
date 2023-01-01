
//  UICOmponentViewController.swift
//  UIPractice
//
//  Created by Amit Ninawe on 12/12/22.

import UIKit

enum ComponentsType: String {
    case button = "UIButton"
    case label = "UILabel"
    case imageView = "UIImageView"
}

class UIComponentViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
//ComponentTableViewCellDelegate
//{
    
    var isComplete = 1
    @IBOutlet weak var componentTable: UITableView!
 
    var dataDict: [Int:Int] = [1:5,2:10,3:5]
    
    var hardArr =  [ [ ["a":"ab"],["b":"bc"],[ "c":"cd"],["d":"de"]],[["e":"ef"],["f":"fg"],
    [ "g":"gh"],["h":"hi"]] ]
  
    var strDict: [String: [String]] = ["Vowel": ["A", "E", "I", "O", "U"], "Consonants": ["B","C","D","F","G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X"], "Numbers": ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]]
       
    var componentArray: [ComponentsType] = [.button, .label, .imageView]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        componentTable.delegate = self
        componentTable.dataSource = self
    }
    
   
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         let arr = Array(hardArr[0][0].keys)
        // let adb = arr[section]
         return hardArr[section].count
     }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return hardArr.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UIComponentCell", for: indexPath)
       // cell.textLabel?.text = "\(hardArr[0][indexPath.section]) , \(hardArr[0][indexPath.row]) "
        cell.textLabel?.text = " \(hardArr[0][indexPath.row]) "
        let  tup = hardArr[1][indexPath.row]
        cell.textLabel?.text = " \(tup.values) "
        return cell
    }
        
        //
        //    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //
        //        guard let val = dataDict[section] else { return 0 }
        //        return val
        //        switch section{
        //        case 0:
        //            return 10
        //        case 1:
        //            return 20
        //        case 2:
        //            return 10
        //        default:
        //            return 50
        //
        //        }
        //
        //    }
        
        
        //
        //
        //   func numberOfSections(in tableView: UITableView) -> Int {
        //       return  dataDict.count + 1
        //    }
        
 
        
        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            let keyArr = Array(hardArr[0][0].keys)
            //  let key = keyArr[section]
            return "SS"
        }

        func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
            let keyArr = Array(hardArr[0][0].keys)
            //   let key = keyArr[section]
            return "SS"

        }
 
    
//   delegate example
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return componentArray.count
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "UIComponentCell", for: indexPath) as! UIComponentCell
//        cell.delegate = self
//        cell.setUp(type: componentArray[indexPath.row])
//        return cell
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           let type = componentArray[indexPath.row]
//           switch type {
//           case .button:
//               guard let vc2 =  self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") else { return  }
//               self.navigationController?.pushViewController(vc2, animated: true)
//           case .label:
//               print("No Data Available")
//           case .imageView:
//               print("No Data Available")
//           }
//       }
//
//
//    func didTapGoButton(type: ComponentsType) {
//
//        switch type{
//        case .button:
//
//        guard let vc2 =  self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") else { return  }
//        self.navigationController?.pushViewController(vc2, animated: true)
//
//        case .label:
//            print("No Data Available")
//        case .imageView:
//            print("No Data Available")
//        }
//    }
//
//
//
}
