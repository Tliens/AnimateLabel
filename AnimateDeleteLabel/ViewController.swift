//
//  ViewController.swift
//  AnimateDeleteLabel
//
//  Created by 2020 on 2021/1/25.
//

import UIKit

class ViewController: UIViewController {

    let label = AnimateDeleteLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(label)
        label.numberOfLines = 0
        label.text = "要使用删除线的部分用自定义的要使用删除线的部分用自定义的要使用删除线的部分用自定义的"
        label.frame.origin = CGPoint(x: 20, y: 100)
        label.frame.size.width = 200
        label.sizeToFit()

    }

    @IBAction func sliderValueChange(_ sender: UISlider) {
        label.progress = CGFloat(sender.value)
        label.setNeedsDisplay()
    }
    

    
}

