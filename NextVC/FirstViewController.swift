//
//  FirstViewController.swift
//  NextVC
//
//  Created by Jaesuk Lee on 2023/09/02.
//

import UIKit

class FirstViewController: UIViewController {

    let mainLabel = UILabel()
    // button 클로저 실행문
    let backButton: UIButton = {
        let backButton = UIButton(type: .custom)
        // backButton
        backButton.setTitle("BACK", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = UIColor.blue
        backButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return backButton
    }()
    
    // 데이터를 전달할 때는 optional 으로 많이 한다.
    var someString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setup()
        configureAutoLayout()
    }
    

    
    
    
    func setup() {
        
        // mainLabel
        mainLabel.text = someString
        mainLabel.font = UIFont.systemFont(ofSize: 22)
        
        view.addSubview(mainLabel)
        view.addSubview(backButton)
        
        view.backgroundColor = .gray
    }
    
    
    func configureAutoLayout() {
        
        // auto layout
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 0).isActive = true
        

        // button auto layout
        backButton.translatesAutoresizingMaskIntoConstraints = false
        backButton.widthAnchor.constraint(equalToConstant: 70).isActive = true
        backButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        backButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        backButton.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
    }

    
    @objc func backButtonTapped() {
        print("Back button tapped")
        dismiss(animated: true, completion: nil)
    }
}
