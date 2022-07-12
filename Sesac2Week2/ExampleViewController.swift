//
//  ExampleViewController.swift
//  Sesac2Week2
//
//  Created by Y on 2022/07/12.
//

import UIKit

class ExampleViewController: UIViewController {

    @IBOutlet weak var happyLabel: UILabel!
    @IBOutlet weak var happyButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        happyLabel.text = setUserNickname()
        view.backgroundColor = example().0

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
