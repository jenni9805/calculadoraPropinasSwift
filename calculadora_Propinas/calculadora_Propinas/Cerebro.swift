//
//  Cerebro.swift
//  calculadora_Propinas
//
//  Created by Ramiro y Jennifer on 23/03/21.
//

import Foundation

struct Cerebro {
    
    var propina: Propina?
    
    mutating func calcularPropina(totalCuenta: Float, porcentaje: Float, personas: Float){
        let total = (totalCuenta/porcentaje)/personas
        
        if total > 0 {
            propina = Propina(totalPropina: total)
        }
    }
    
    func valorPropina() -> String {
        let valor = String(format: "%.2f", propina?.totalPropina ?? 0.0)
        return valor
    }
}
