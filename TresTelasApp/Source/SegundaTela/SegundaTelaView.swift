//
//  SegundaTelaView.swift
//  TresTelasApp
//
//  Created by Dario Pintor on 20/07/24.
//

import Foundation
import UIKit

class SegundaTelaView: UIView {
    
    let botaoNavegacao: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Ir para Terceira Tela", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blue
        button.layer.cornerRadius = 14
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .lightGray
        self.addSubview(botaoNavegacao)
        botaoNavegacao.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            botaoNavegacao.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            botaoNavegacao.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            botaoNavegacao.widthAnchor.constraint(equalToConstant: 200),
            botaoNavegacao.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
