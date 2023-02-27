//
//  ViewController.swift
//  IMC-app
//
//  Created by Yan Chagas on 12/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var imc: Double = 0

    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeigh: UITextField!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var imgResult: UIImageView!
    @IBOutlet weak var viewResult: UIView!
    @IBOutlet weak var altura: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculate(_ sender: Any) {
        if let weight = Double(tfWeight.text!) , let heigh = Double(tfHeigh.text!)
        {
            imc = weight / pow(heigh,2)
            showResults()
            }
    

        }
        
    func showResults () {
        var result: String = " "
        var image: String = " "
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "magreza"
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "abaixo"
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
            default:
                result = "Obesidade"
                image = "obesidade"
        
        }
        lbResult.text = "\(Int(imc)): \(result)"
        imgResult.image = UIImage(named: image)
        viewResult.isHidden = false
        view.endEditing(true)
        
    }
    
    
}

