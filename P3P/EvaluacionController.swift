//
//  EvaluacionController.swift
//  P3P
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class EvaluacionController : UIViewController {
    var callbackEvaluar : ((Materias) -> Void)?
    var materia : Materias?
    
    @IBOutlet weak var txtComentario: UITextField!
    @IBOutlet weak var txtCalificacion: UITextField!
    @IBOutlet weak var lblMaestro: UILabel!
    @IBOutlet weak var lblMateria: UILabel!
    
    override func viewDidLoad() {
        lblMaestro.text = materia?.maestro
        lblMateria.text = materia?.materia
        txtComentario.text = materia?.comentario
        txtCalificacion.text = materia?.calificacion
    }
    
    
    @IBAction func doTapEvaluar(_ sender: Any) {
        if callbackEvaluar != nil{
            materia?.calificacion = txtCalificacion.text!
            materia?.comentario = txtComentario.text!
            callbackEvaluar!(materia!)
            self.navigationController?.popViewController(animated: true)
            }
    }
    
}
