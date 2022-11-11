//
//  ViewController.swift
//  P3P
//
//  Created by Alumno on 10/27/22.
//  Copyright © 2022 ulsa. All rights reserved.
//

import UIKit

class InicioController: UIViewController {
    var materias : [Materias] = []
    
    @IBOutlet weak var tvMaterias: UITableView!
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 55
    }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMaterias") as? CeldaMateriasController
        celda?.lblMateria.text = materias[indexPath.row].materia
        celda?.lblMaestro.text = materias[indexPath.row].maestro
        
        return celda!
    }
    
    ///
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

