//
//  ViewController.swift
//  AnimationViewApp
//
//  Created by Дмитрий Смирнов on 23.02.22.
//

import UIKit
import Spring

final class ViewController: UIViewController {

    @IBOutlet weak var numberForce: UILabel!
    @IBOutlet weak var numberDuration: UILabel!
    @IBOutlet weak var numberDelay: UILabel!
    @IBOutlet weak var numberCurve: UILabel!

    @IBOutlet weak var stackViewSecond: UIStackView!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var springView: SpringView!

    override func viewDidLoad() {
        super.viewDidLoad()

        stackViewSecond.isHidden = true
        springView.layer.cornerRadius = springView.frame.width / 2
    }

    @IBAction func animationBtn() {
//        Вызов функции одной анимации
//        springView.animation = AnimationType.morph.rawValue
//        springView.curve = Curve.spring.rawValue
//        springView.force = 1
//        springView.duration = 1
//        springView.delay = 0.5
//        springView.animate()

        stackViewSecond.isHidden = false
        if let randomElement = AnimationType.allCases.randomElement()?.rawValue,
            let randomCurve = Curve.allCases.randomElement()?.rawValue {
            springView.curve = randomCurve
            nameLbl.text = randomElement
            springView.animation = randomElement
            numberCurve.text = randomCurve
            springView.backgroundColor = random()
        }
        // сила
        springView.force = randomNumber()
        numberForce.text = printTextLbl(springView.force)
        // продолжительность
        springView.duration = randomNumber()
        numberDuration.text = printTextLbl(springView.duration)
        // задержка
        springView.delay = randomNumber()
        numberDelay.text = printTextLbl(springView.delay)
        // старт анимации
        springView.animate()
    }
    
    private func random() -> UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0)
    }
    
    private func randomNumber() -> CGFloat {
        return .random(in: 0.1...2)
    }
    
    private func printTextLbl(_ number: CGFloat) -> String {
        return String(format: "%.2f", number)
    }
}
