//
//  ViewController.swift
//  ejerc2DiTema1
//
//  Created by Montacer El Fazazi on 26/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNombre: UITextField!
    @IBOutlet weak var txtTotalPreguntas: UITextField!
    @IBOutlet weak var txtTotalAcertadas: UITextField!
    @IBOutlet weak var txtPosicionLista: UITextField!
    @IBOutlet weak var lbMostrarInformacion: UILabel!
    
    //variables para la logica
    var listaExamenes: [Examen]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaExamenes = []
    }
    @IBAction func btnInsertar(_ sender: Any) {
        let nombre = txtNombre.text!
        let totalP = txtTotalPreguntas.text!
        let totalA = txtTotalAcertadas.text!
        
        if nombre.isEmpty || totalA.isEmpty || totalP.isEmpty {
            //mensaje: no se puede:
            alertError(titulo: "error", mensaje: "faltan datos")
        }else{
            //creamos el examen y lo meto en la lista en un pasoo:
            listaExamenes.append(Examen(nombre: nombre, totalPreguntas: Int(totalP)!, totalAcertadas: Int(totalA)!))
                //! es para cuando convertimos por eso nomb no tiene
            
            alertError(titulo: "confirmacion", mensaje: "datos almacenados con exito")
            
            txtNombre.text = ""
            txtTotalPreguntas.text = ""
            txtTotalAcertadas.text = ""
        }
    }
    @IBAction func btnVer(_ sender: Any) {
        let indice = txtPosicionLista.text!
            
            if indice.isEmpty {
                alertError(titulo: "error", mensaje: "tienes que rellenar la posicion")
            }else{
                if Int(indice)! < 1 || Int(indice)! > listaExamenes.count {
                    alertError(titulo: "error", mensaje: "posicion incorrecta")
                }else{
                    lbMostrarInformacion.text = listaExamenes[Int(indice)!-1].toString()
                }
            }
    }
    
 
    
    func alertError(titulo: String, mensaje: String) {
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "ok", style: .destructive, handler: nil)) //nil es null
        self.present(alert, animated: true, completion: nil)
    }
    
    
    /*
    
    @IBAction func btnVerVentanaNueva(_ sender: Any) {
        let indice = txtPosicionLista.text!
            
            if indice.isEmpty {
                alertError(titulo: "error", mensaje: "tienes que rellenar la posicion")
            }else{
                if Int(indice)! < 1 || Int(indice)! > listaExamenes.count {
                    alertError(titulo: "error", mensaje: "posicion incorrecta")
                }else{
                    if segue.identifier == "VER" {
                        let destino = segue.destination as!
                        VerExamenViewController
                        destino.examen = listaExamenes[Int(indice)!1]
                    }
                }
            }
    }*/
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indice = txtPosicionLista.text!

            if indice.isEmpty {
                alertError(titulo: "error", mensaje: "tienes que rellenar la posicion")
            }else{
                if Int(indice)! < 1 || Int(indice)! > listaExamenes.count {
                    alertError(titulo: "error", mensaje: "posicion incorrecta")
                }else{
                    if segue.identifier == "VER" {
                        let destino = segue.destination as!
                        VerExamenViewController
                        destino.examen = listaExamenes[Int(indice)! - 1]
                    }
                }
            }
    }
    
    
    
    
}

