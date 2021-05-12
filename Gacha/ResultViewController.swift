//
//  ResultViewController.swift
//  Gacha
//
//  Created by 柳澤琉貴 on 2021/05/12.
//

import UIKit

class ResultViewController: UIViewController {

    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        number = Int.random(in: 0...10)
        if number >= 9 {
            backgroundImageView.image = UIImage(named: "bg_gold")
            showMonster(number: number)
        } else if number > 7 {
            backgroundImageView.image = UIImage(named: "bg_red")
            showMonster(number: number)
        } else {
            backgroundImageView.image = UIImage(named: "bg_blue")
            showMonster(number: number)
        }
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }

    func showMonster(number: Int) {
        if number == 10 {
            monsterImageView.image = UIImage(named: "monster010")
        } else {
            monsterImageView.image = UIImage(named: "monster00\(number)")
        }
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
