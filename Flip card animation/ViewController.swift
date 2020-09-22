//
//  ViewController.swift
//  Flip card animation
//
//  Created by THANIKANTI VAMSI KRISHNA on 1/29/20.
//  Copyright © 2020 THANIKANTI VAMSI KRISHNA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    var isOpen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "back")
    }
    
    
    @IBAction func flipCardBtn(_ sender: UIButton)
    {
        if isOpen {
            isOpen = false
            imageView.image = UIImage(named: "back")
            UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromLeft, animations: nil, completion: nil)
        }else{
            isOpen = true
            imageView.image = UIImage(named: "front")
            UIView.transition(with: imageView, duration: 0.3, options: .transitionFlipFromRight, animations: nil, completion: nil)
        }
        
    }
    


}

