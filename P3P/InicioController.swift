//
//  ViewController.swift
//  P3P
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class InicioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var materias : [Materias] = []
    var asistencia : [Asistencia] = []
    
    @IBOutlet weak var tvAsistencia: UITableView!
    @IBOutlet weak var tvMaterias: UITableView!
    
    //Celda Materias
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if tableView == tvAsistencia {
            return 44
        } else if tableView == tvMaterias {
            return 55
        }
    }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            if tableView == tvAsistencia {
                return 1
            } else if tableView == tvMaterias {
                return 1
            }
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            if tableView == tvAsistencia {
                return asistencia.count
            } else if tableView == tvMaterias {
                return materias.count
            }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if tableView == tvMaterias{
            let celdaMaterias = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias") as? CeldaMateriasController
            celdaMaterias?.lblMateria.text = materias[indexPath.row].materia
            celdaMaterias?.lblMaestro.text = materias[indexPath.row].maestro
            
            return celdaMaterias!
        } else if tableView == tvAsistencia {
            let celdaAsistencia = tableView.dequeueReusableCell(withIdentifier: "celdaAsistencia") as? CeldaAsistenciaController
            celdaAsistencia?.lblNMateria.text = asistencia[indexPath.row].nmateria
            celdaAsistencia?.lblHora.text = asistencia[indexPath.row].hora
            
            celdaAsistencia?.imgFoto.image = UIImage(named: asistencia[indexPath.row].foto)
            celdaAsistencia?.imgFoto.layer.cornerRadius = 10
            celdaAsistencia?.imgFoto.clipsToBounds = true
            
            return celdaAsistencia!
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        materias.append(Materias(materia: "Programación", maestro: "Emiliano"))
        materias.append(Materias(materia: "Comunicación", maestro: "Angelica"))
        materias.append(Materias(materia: "Animación 3D", maestro: "Memo"))
        materias.append(Materias(materia: "Mercadotecnia", maestro: "Emiliano"))
        materias.append(Materias(materia: "Redes", maestro: "Emiliano"))
        materias.append(Materias(materia: "Tratamiento", maestro: "Emiliano"))
        materias.append(Materias(materia: "Diosito", maestro: "Padre Jorge"))
        
        asistencia.append(Asistencia(nmateria: "Programación", hora: "7:00-10:00 ", foto: ""))
        asistencia.append(Asistencia(nmateria: "Mercadotecnia", hora: "10:00-11:00 ", foto: ""))
        asistencia.append(Asistencia(nmateria: "Tratamiento", hora: "11:00-01:00 ", foto: ""))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

