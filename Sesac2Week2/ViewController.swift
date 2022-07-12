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
        happyLabel.text = "행복해 \(emotionCountArray[0])"
        likeLabel.text = "좋아해 \(emotionCountArray[1])"
        loveLabel.text = "사랑해 \(emotionCountArray[2])"
        angryLabel.text = "분노해 \(emotionCountArray[3])"
        stuckLabel.text = "황당해 \(emotionCountArray[4])"
        blueLabel.text = "우울해 \(emotionCountArray[5])"
        shockLabel.text = "당황해 \(emotionCountArray[6])"
        unhappyLabel.text = "불행해 \(emotionCountArray[7])"
        cryLabel.text = "슬퍼해 \(emotionCountArray[8])"
        
    }
    
    var emotionCountArray = [0,0,0,0,0,0,0,0,0,]
    
    @IBAction func countButtonTapped(_ sender: UIButton) {
        
        emotionCountArray[sender.tag] += 1
        
        designCountLabel()
        
        showAlertController()
    }
    
    func showAlertController(){
        let alert = UIAlertController(title: "Title", message: "Message", preferredStyle: .alert)
    
        let ok = UIAlertAction(title: "OKay.", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        let destructive = UIAlertAction(title: "Destructive", style: .destructive, handler: nil)
        let web = UIAlertAction(title: "Web", style: .default, handler: nil)
   
        alert.addAction(web)
        alert.addAction(destructive)
        alert.addAction(ok)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
    }
    
    
}
//    Jack님 강의 듣기 전, Array를 생각해내지 못 하고 일일히 지정해줬던 첫 빌드

//    lazy var happyCount: Int = 0
//    lazy var likeCount: Int = 0
//    lazy var loveCount: Int = 0
//    lazy var angryCount: Int = 0
//    lazy var stuckCount: Int = 0
//    lazy var blueCount: Int = 0
//    lazy var shockCount: Int = 0
//    lazy var unhappyCount: Int = 0
//    lazy var cryCount: Int = 0
//
//    @IBAction func countButtonTapped(_ sender: UIButton) {
//
//        if sender.tag == 1{
//            happyCount += 1
//        } else if sender.tag == 2{
//            likeCount += 1
//        } else if sender.tag == 3{
//            loveCount += 1
//        } else if sender.tag == 4{
//            angryCount += 1
//        } else if sender.tag == 5{
//            stuckCount += 1
//        } else if sender.tag == 6{
//            blueCount += 1
//        } else if sender.tag == 7{
//            shockCount += 1
//        } else if sender.tag == 8{
//            unhappyCount += 1
//        }
//        if sender.tag == 9{
//            cryCount += 1
//        }
