//
//  ZoomViewController.swift
//  slideshowApp
//
//  Created by Yousuke Hasegawa on 2021/07/29.
//

import UIKit

class ZoomViewController: UIViewController {
    
    var zoomImage: UIImage!
    
    @IBOutlet weak var zoomImageView: UIImageView!
    @IBOutlet weak var backButtonLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        backButtonLabel.setTitle("戻る", for: .normal)
        zoomImageView.image = zoomImage
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
