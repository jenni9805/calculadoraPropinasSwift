//
//  ResultadoViewController.swift
//  calculadora_Propinas
//
//  Created by Ramiro y Jennifer on 23/03/21.
//

import UIKit

class ResultadoViewController: UIViewController {
    var precio_total:String?
    @IBOutlet weak var precioLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        precioLabel.text = "\(precio_total!) MXN"
    }
    

    @IBAction func volverButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
