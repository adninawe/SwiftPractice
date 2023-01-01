//
//  ViewController.swift
//  UIPractice
//
//  Created by Amit Ninawe on 09/12/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func moveToNextVC(){
        
        
        guard let vc2 =  self.storyboard?.instantiateViewController(withIdentifier: "ViewController2") else { return  }
        self.navigationController?.pushViewController(vc2, animated: true)
        
        
    }
    
}
