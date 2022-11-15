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
    
    override func viewDidLoad() {
        self.title = materia?.materia
        lblMateria.text = materia?.materia
        lblMaestro.text = materia?.maestro
    }
}
