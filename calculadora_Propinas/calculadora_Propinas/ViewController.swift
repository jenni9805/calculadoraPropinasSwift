//
//  ViewController.swift
//  calculadora_Propinas
//
//  Created by Ramiro y Jennifer on 23/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    var calcular = Cerebro()

    @IBOutlet weak var porcientoLabel: UILabel!
    @IBOutlet weak var personasLabel: UILabel!
    @IBOutlet weak var cuentaTextField: UITextField!
    @IBOutlet weak var porcientoSlider: UISlider!
    @IBOutlet weak var personasSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func porcientoSliderAction(_ sender: UISlider) {
        porcientoLabel.text = "\(String(format: "%.0f", sender.value))"
    }
    
    @IBAction func personasSliderAction(_ sender: UISlider) {
        personasLabel.text = "\(String(format: "%.0f", sender.value))"
    }
    
    
    @IBAction func calcularButton(_ sender: UIButton) {
        let total:String? = cuentaTextField.text
        let porcentaje:Float? = porcientoSlider.value
        let personas:Float? = personasSlider.value
        
        calcular.calcularPropina(totalCuenta: Float(total!) ?? 0.0, porcentaje: Float(porcentaje!) ?? 0.0, personas: Float(personas!) ?? 0.0)
        
        performSegue(withIdentifier: "resultado", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultado"{
            let destinoVC = segue.destination as! ResultadoViewController
            destinoVC.precio_total = calcular.valorPropina()
            
        }
    }

}

