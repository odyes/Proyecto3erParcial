//
//  FaltasController.swift
//  P3P
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class FaltasController : UIViewController {
    var materia : Materias?
    
    @IBOutlet weak var lblMateria: UILabel!
    @IBOutlet weak var lblMaestro: UILabel!
    @IBOutlet weak var lblComentarios: UILabel!
    @IBOutlet weak var lblCalificacion: UILabel!
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToEvaluacion" {
            let destino = segue.destination as! EvaluacionController
            destino.callbackEvaluar = evaluarDocente
            destino.materia = materia!
        }
    }
    
    func evaluarDocente(materia: Materias){
        lblCalificacion.text = materia.calificacion
        lblComentarios.text = materia.comentario
    }
    
    override func viewDidLoad() {
        self.title = materia?.materia
        lblMateria.text = materia?.materia
        lblMaestro.text = materia?.maestro
        
        if (materia?.calificacion == "") {
            lblCalificacion.text = "No asignado"
        } else {
            lblCalificacion.text = materia?.calificacion
        }
        if (materia?.comentario == "") {
            lblComentarios.text = "No comentarios"
        } else {
            lblComentarios.text = materia?.comentario
        }
    
    }
}
