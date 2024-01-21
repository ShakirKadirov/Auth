//
//  ViewController.swift
//  Auth
//
//  Created by Shakir Kadirov on 21.01.2024.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tblView: UITableView = {
        $0.backgroundColor = UIColor(red: 10/255, green: 73/255, blue: 127/255, alpha: 1)
        $0.addSubview(titleLbl)
        $0.addSubview(descriptionLbl)
        $0.addSubview(emailTextField)
        $0.addSubview(passwordTextField)
        $0.addSubview(sinInBtn)
        return $0
    }(UITableView(frame: view.frame))
    
    lazy var titleLbl: UILabel = {
        $0.text = "Авторизация"
        $0.textColor = .white

        $0.font = UIFont.boldSystemFont(ofSize: 25)
        return $0
    }(UILabel(frame: CGRect(x: 31, y: 100, width: view.frame.width - 62, height: 50)))
    lazy var descriptionLbl: UILabel = {
        $0.text = "Lorem ipsum dolor sit amet, consectetur adipisi ing elit, sed do eiusmod"
        $0.textColor = .white
        $0.numberOfLines = 0
        return $0
    }(UILabel(frame: CGRect(x: 31, y: titleLbl.frame.origin.y + 60, width: view.frame.width - 62, height: 50)))
    
    lazy var emailTextField: UITextField = {
        $0.placeholder = "Email"
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField(frame: CGRect(x: 31, y: descriptionLbl.frame.origin.y + 60, width: view.frame.width - 62, height: 50)))
    
    lazy var passwordTextField: UITextField = {
        $0.placeholder = "Password"
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 25
        return $0
    }(UITextField(frame: CGRect(x: 31, y: emailTextField.frame.origin.y + 60, width: view.frame.width - 62, height: 50)))
    lazy var sinInBtn: UIButton = {
        $0.setTitle("Войти", for: .normal)
        $0.setTitleColor(UIColor(red: 10/255, green: 73/255, blue: 127/255, alpha: 1), for: .normal)
        $0.backgroundColor = .white
        $0.layer.cornerRadius = 25
        return $0
    }(UIButton(frame: CGRect(x: 31, y: passwordTextField.frame.origin.y + 60, width: view.frame.width - 62, height: 50)))

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tblView)
    }


}

