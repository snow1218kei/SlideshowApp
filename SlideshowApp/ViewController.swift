//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 辻村祐揮 on 2021/07/10.
//

import UIKit

class ViewController: UIViewController {
    
    var cat1 = UIImage(named:"cat1.jpg")!
    var cat2 = UIImage(named:"cat2.jpg")!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func forward(_ sender: Any) {
        if self.timer == nil{
            if imageView.image == cat1 {
                imageView.image = cat2
            } else {
                imageView.image = cat1
            }
        }
    }
    
    
    @IBAction func backward(_ sender: Any) {
        if self.timer == nil{
            if imageView.image == cat2 {
                imageView.image = cat1
            } else {
                imageView.image = cat2
            }
        }
    }
    
    var timer: Timer!
    
    @objc func updateTimer(_ timer: Timer){
        if imageView.image == cat2 {
            imageView.image = cat1
        } else {
            imageView.image = cat2
        }
    }
    
    @IBOutlet weak var playStop: UIButton!
    
    @IBAction func platStop(_ sender: Any) {
        if self.timer == nil{
            self.timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            playStop.setTitle("停止", for: .normal)
        } else {
            self.timer.invalidate()
            self.timer = nil
            playStop.setTitle("再生", for: .normal)
        }
    }
    
    var photo : UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if photo == cat2{
            imageView.image = cat2
        } else {
            imageView.image = cat1
        }
    }

    @IBAction func tapAction(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        if imageView.image == cat1{
            resultViewController.scaledPhoto = cat1
        } else {
            resultViewController.scaledPhoto = cat2
        }
            
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
    
}

