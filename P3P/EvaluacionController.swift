//
//  EvaluacionController.swift
//  P3P
//
//  Created by Alumno ULSA on 15/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class EvaluacionController : UIViewController {
    var evaluacion : Evaluacion?
    var callbackEvaluar : (( ) -> Void)?
    
    
    @IBOutlet weak var txtCalificacion: UITextField!
    @IBOutlet weak var txtComentario: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if evaluacion != nil{
                txtComentario.text = evaluacion!.comentario
                txtCalificacion.text = evaluacion!.calificacion
            }
        }
    
    @IBAction func doTapEvaluar(_ sender: Any) {
        if callbackEvaluar != nil{
            evaluacion?.comentario = txtComentario.text!
            evaluacion?.calificacion = txtCalificacion.text!
            
            self.navigationController?.popViewController(animated: true)
            }
    }
    
    
}
