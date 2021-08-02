//
//  ViewController.swift
//  slideshowApp
//
//  Created by Yousuke Hasegawa on 2021/07/29.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var slideShowButtonLabel: UIButton!
    @IBOutlet weak var backButtonLabel: UIButton!
    @IBOutlet weak var forwardButtonLabel: UIButton!
    
    var image0:UIImage!
    var image1:UIImage!
    var image2:UIImage!
    var image3:UIImage!
    
    var timer: Timer!
    var num: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.text = "ぬいぐるみずかん"
        slideShowButtonLabel.setTitle("再生", for: .normal)
        
        image0 = UIImage(named: "meru.jpeg")
        image1 = UIImage(named: "baik.jpeg")
        image2 = UIImage(named: "sheep.jpeg")
        image3 = UIImage(named: "bear.jpeg")
        
        imageView.image = image0
    }

    @IBAction func backButton(_ sender: Any) {
        num += 3
        
        switch num % 4 {
        case 0:
            imageView.image = image0
        case 1:
            imageView.image = image1
        case 2:
            imageView.image = image2
        default:
            imageView.image = image3
        }

    }
    
    @objc func updateTimer(_ timer: Timer){
        self.num += 1
        
        switch num % 4{
        case 0:
            imageView.image = image0
        case 1:
            imageView.image = image1
        case 2:
            imageView.image = image2
        default:
            imageView.image = image3
        }
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
    
        if self.timer == nil{
        
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            slideShowButtonLabel.setTitle("停止", for: .normal)
            backButtonLabel.isEnabled = false
            forwardButtonLabel.isEnabled = false
            
        }else{
            self.timer.invalidate()
            self.timer = nil
            slideShowButtonLabel.setTitle("再生", for: .normal)
            backButtonLabel.isEnabled = true
            forwardButtonLabel.isEnabled = true
        }
    }
    
    @IBAction func forwardButton(_ sender: Any) {
        num += 1
        
        switch num % 4{
        case 0:
            imageView.image = image0
        case 1:
            imageView.image = image1
        case 2:
            imageView.image = image2
        default:
            imageView.image = image3
        }
    }
    
}

