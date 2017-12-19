//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Shang Chi Cheng on 2017/12/19.
//  Copyright © 2017年 shyon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImg: UIImageView!
    @IBAction func askBtn(_ sender: Any) {
        randPic()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        randPic()
    }
    func randPic() {
        let balls = ["ball1.png","ball2.png","ball3.png","ball4.png"]
        let randBall = Int(arc4random_uniform(4))
        ballImg.image = UIImage(named: balls[randBall])
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        randPic()
    }
}

