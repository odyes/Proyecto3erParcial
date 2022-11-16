//
//  Materias.swift
//  P3P
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

class Materias {
    var materia : String
    var maestro : String
    var calificacion : String
    var comentario : String
    
    init(materia: String, maestro: String, calificacion: String, comentario: String) {
        self.materia = materia
        self.maestro = maestro
        self.calificacion = calificacion
        self.comentario = comentario
    }
}
