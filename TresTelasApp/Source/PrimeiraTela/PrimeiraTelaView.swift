//
//  PrimeiraTelaView.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class PrimeiraTelaView: UIView {
    
    let botaoNavegacao: UIButton = {
        let button = UIButton(type: .system)
        
        button.layer.cornerRadius = 14
        button.setTitle("Ir para Segunda Tela", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.addSubview(botaoNavegacao)
        botaoNavegacao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoNavegacao.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
               botaoNavegacao.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerYAnchor),
            botaoNavegacao.widthAnchor.constraint(equalToConstant: 200),
            botaoNavegacao.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
