//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 辻村祐揮 on 2021/07/10.
//

import UIKit

class ResultViewController: UIViewController {


    @IBOutlet weak var imageView: UIImageView!

    @IBAction func back(_ sender: Any) {
    }
    
    var scaledPhoto : UIImage!
    //var width : CGFloat = 0
    //var height : CGFloat = 0

    override func viewDidLoad() {
        super.viewDidLoad()
      //  imageView.frame = CGRect(x:0, y:0, width:600, height:500);
        imageView.image = scaledPhoto
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?){
        let viewController:ViewController = segue.destination as! ViewController
        viewController.photo = imageView.image!
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
