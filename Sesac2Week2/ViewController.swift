//
//  ViewController.swift
//  Sesac2Week2
//
//  Created by Y on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var angryLabel: UILabel!
    @IBOutlet weak var stuckLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var shockLabel: UILabel!
    @IBOutlet weak var unhappyLabel: UILabel!
    @IBOutlet weak var cryLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        designCountLabel()
        
    }

    func designCountLabel(){
        happyLabel.text = "행복해 \(happyCount)"
        likeLabel.text = "좋아해 \(likeCount)"
        loveLabel.text = "사랑해 \(loveCount)"
        angryLabel.text = "분노해 \(angryCount)"
        stuckLabel.text = "황당해 \(stuckCount)"
        blueLabel.text = "우울해 \(blueCount)"
        shockLabel.text = "당황해 \(shockCount)"
        unhappyLabel.text = "불행해 \(unhappyCount)"
        cryLabel.text = "슬퍼해 \(cryCount)"
        
    }
    
    lazy var happyCount: Int = 0
    lazy var likeCount: Int = 0
    lazy var loveCount: Int = 0
    lazy var angryCount: Int = 0
    lazy var stuckCount: Int = 0
    lazy var blueCount: Int = 0
    lazy var shockCount: Int = 0
    lazy var unhappyCount: Int = 0
    lazy var cryCount: Int = 0
    
    @IBAction func countButtonTapped(_ sender: UIButton) {
        
        if sender.tag == 1{
            happyCount += 1
        } else if sender.tag == 2{
            likeCount += 1
        } else if sender.tag == 3{
            loveCount += 1
        } else if sender.tag == 4{
            angryCount += 1
        } else if sender.tag == 5{
            stuckCount += 1
        } else if sender.tag == 6{
            blueCount += 1
        } else if sender.tag == 7{
            shockCount += 1
        } else if sender.tag == 8{
            unhappyCount += 1
        }
        if sender.tag == 9{
            cryCount += 1
        }
        
        print(sender.tag)
        
        
        designCountLabel()
        
        
    }
    

    
    
}

