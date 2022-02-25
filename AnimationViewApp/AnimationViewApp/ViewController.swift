//
//  ViewController.swift
//  AnimationViewApp
//
//  Created by Дмитрий Смирнов on 23.02.22.
//

import UIKit
import Spring

class ViewController: UIViewController {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var propertiesLbl: UILabel!
    
    //var randomCurve: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        springView.delay = 5
//        springView.repeatCount = 3
//        springView.animate()
        
        springView.layer.cornerRadius = springView.frame.width/2
        // Do any additional setup after loading the view.
    }
    
    //@IBAction func enterBtn()
//    @IBAction func enterBtn() {
//        nameLbl.isHidden = false
//        if let randomElement = AnimationType.allCases.randomElement()?
//            let randomCurve = Curve.allCases.randomElement()?.rawValue ?? {
//            springView.curve = randomCurve
//            nameLbl.text = randomElement
//            springView.animation = randomElement
//            springView.text = randomElement
//            springView.backgroundColor = random()
//        }
//        //springView.force = randomNumber()

    
    
    
    @IBAction func animationBtn(_ sender: SpringButton) {

        springView.animation = AnimationType.morph.rawValue

        springView.curve = Curve.spring.rawValue
        //springView.backgroundColor = random()
        
        springView.force = 1
        springView.duration = 1
        springView.delay = 0.5
        springView.animate()
        

}
}
