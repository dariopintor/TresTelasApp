//
//  PrimeiraTelaViewController.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class PrimeiraTelaViewController: UIViewController {
  
    var primeiraVeiw = PrimeiraTelaView()
    
    override func loadView() {
        self.view = primeiraVeiw
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        primeiraVeiw.botaoNavegacao.addTarget(self, action: #selector(navegarParaSegundaTela), for: .touchUpInside)
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillDisappear(animated)
            // Mostra a barra de navegação quando a view vai desaparecer.
            navigationController?.setNavigationBarHidden(false, animated: animated)
    }

    @objc func navegarParaSegundaTela() {
        let segundaTelaVC = SegundaTelaViewController()
        self.navigationController?.pushViewController(segundaTelaVC, animated: true)
    }
}
