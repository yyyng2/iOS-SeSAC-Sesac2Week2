//
//  ExampleViewController.swift
//  Sesac2Week2
//
//  Created by Y on 2022/07/12.
//

import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var stunLabel: UILabel!
    @IBOutlet weak var unhappyLabel: UILabel!
    @IBOutlet weak var loveLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var happyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        happyLabel.text = setUserNickname()
        view.backgroundColor = example().0
        labelRefresh()
        

    }
    
    func labelRefresh (){
        happyLabel.text = "\(emotionCount[0])"
        likeLabel.text = "\(emotionCount[1])"
        loveLabel.text = "\(emotionCount[2])"
        unhappyLabel.text = "\(emotionCount[3])"
        stunLabel.text = "\(emotionCount[4])"
        blueLabel.text = "\(emotionCount[5])"
    }
    
    lazy var emotionCount = [0,0,0,0,0,0]
    
    let happyImage = UIImage(named: "sesac_slime1")?.withRenderingMode(.alwaysOriginal)
    let loveImage = UIImage(named: "sesac_slime2")?.withRenderingMode(.alwaysOriginal)
    
    @IBAction func emotionTapped(_ sender: UIButton) {
        print(emotionCount)
        switch sender.tag {
        case 0:
            emotionCount[0] += 1
        case 1:
            emotionCount[1] += 1
        case 2:
            emotionCount[2] += 1
        case 3:
            emotionCount[3] += 1
        case 4:
            emotionCount[4] += 1
        case 5:
            emotionCount[5] += 1
        default: break
        }
        labelRefresh()
    }
    
    func emotionCountPlus(){
        
    }
    
    
    func example() -> (UIColor, String, String){
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime6", "sesac_slime7", "sesac_slime8", "sesac_slime5"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
    
    func setUserNickname() -> String{
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()
        return "저는 \(select)입니다."
    }

}
