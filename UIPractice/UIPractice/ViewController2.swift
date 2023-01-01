//
//  ViewController2.swift
//  UIPractice
//
//  Created by Amit Ninawe on 09/12/22.
//

import UIKit

class ViewController2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        let button:UIButton = UIButton(frame: CGRect(x: 150, y: 200, width: 100, height: 50))

        button.setTitle("Click Me", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 5
        button.backgroundColor = .black
        button.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button)
        
        let button2:UIButton = UIButton(frame: CGRect(x: 150, y: 300, width: 100, height: 50))
        button2.setTitle("Click Me 2", for: .normal)
        button2.setTitleColor(UIColor.red, for: .normal)
        button2.layer.cornerRadius = 5
        button2.backgroundColor = .green
        button2.addTarget(self, action:#selector(self.buttonClicked), for: .touchUpInside)
        self.view.addSubview(button2)
        // Do any additional setup after loading the view.
    }
    
    @objc func buttonClicked(){
        print("Button Clicked")
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
