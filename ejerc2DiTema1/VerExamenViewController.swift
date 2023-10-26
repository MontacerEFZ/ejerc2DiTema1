//
//  VerExamenViewController.swift
//  ejerc2DiTema1
//
//  Created by Montacer El Fazazi on 26/10/2023.
//

import UIKit

class VerExamenViewController: UIViewController {

    @IBOutlet weak var lbNombre: UILabel!
    @IBOutlet weak var lbTotalPreguntas: UILabel!
    @IBOutlet weak var lbTotalAcertadas: UILabel!
    @IBOutlet weak var lbNotaFinal: UILabel!
    
    var examen: Examen?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbNombre.text = examen!.nombre
        lbTotalPreguntas.text = "\(String(examen!.totalPreguntas))"
        lbTotalAcertadas.text = "\(String(examen!.totalAcertadas))"
        lbNotaFinal.text = "\(String(examen!.notaFinal))"
    }

}
