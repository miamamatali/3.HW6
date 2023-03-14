//
//  SecondViewController.swift
//  3.HW6
//
//  Created by Indira on 14/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    let registerLabel: UILabel = {
           let label = UILabel()
            label.text = "Register"
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 28)
            label.textAlignment = .center
           return label
        }()
        let createLabel: UILabel = {
           let label = UILabel()
            label.text = "Create a new account"
            label.textColor = .white
            label.font = .systemFont(ofSize: 20)
            label.textAlignment = .center
           return label
        }()
        let usernameLabel: UILabel = {
           let label = UILabel()
            label.text = "Username"
            label.textColor = .white
            label.font = .systemFont(ofSize: 18)
            label.textAlignment = .center
           return label
        }()
        let usernameTF: UITextField = {
            let tf = UITextField()
             tf.placeholder = "Username"
             tf.layer.cornerRadius = 12
             tf.layer.backgroundColor = UIColor.white.cgColor
             return tf
        }()
        let emailLabel: UILabel = {
           let label = UILabel()
            label.text = "Email"
            label.textColor = .white
            label.font = .systemFont(ofSize: 18)
            label.textAlignment = .center
           return label
        }()
        let emailTF: UITextField = {
            let tf = UITextField()
             tf.placeholder = "Email"
             tf.layer.cornerRadius = 12
             tf.layer.backgroundColor = UIColor.white.cgColor
             return tf
        }()
        let numberLabel: UILabel = {
           let label = UILabel()
            label.text = "Mobile Number"
            label.textColor = .white
            label.font = .systemFont(ofSize: 18)
            label.textAlignment = .center
           return label
        }()
        let numberTF: UITextField = {
            let tf = UITextField()
             tf.placeholder = "Mobile Number"
             tf.layer.cornerRadius = 12
             tf.layer.backgroundColor = UIColor.white.cgColor
             return tf
        }()
        let passwordLabel: UILabel = {
           let label = UILabel()
            label.text = "Password"
            label.textColor = .white
            label.font = .systemFont(ofSize: 18)
            label.textAlignment = .center
           return label
        }()
        let passwordTF: UITextField = {
            let tf = UITextField()
             tf.placeholder = "Password"
             tf.layer.cornerRadius = 12
             tf.layer.backgroundColor = UIColor.white.cgColor
             return tf
        }()
        let eyeBtn: UIButton = {
           let button = UIButton()
            button.setImage(UIImage(systemName: "eye"), for: .normal)
            button.tintColor = .gray
            return button
        }()
        let loginBtn: UIButton = {
           let button = UIButton()
            button.setTitle("Login", for: .normal)
            button.layer.cornerRadius = 16
            button.tintColor = .white
            button.backgroundColor = .systemBlue
            return button
        }()
        private func setUpSubViews(){
            view.backgroundColor = .black
            
            view.addSubview(registerLabel)
            registerLabel.snp.makeConstraints { make in
                make.height.equalTo(42)
                make.top.equalToSuperview().offset(200)
                make.leading.trailing.equalToSuperview().inset(130)
            }
            
            view.addSubview(createLabel)
            createLabel.snp.makeConstraints { make in
                make.height.equalTo(30)
                make.top.equalToSuperview().offset(236)
                make.leading.trailing.equalToSuperview().inset(75)
            }
            view.addSubview(usernameLabel)
            usernameLabel.snp.makeConstraints { make in
                make.top.equalTo(createLabel.snp.bottom).offset(18)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(27)
            }
            view.addSubview(usernameTF)
            usernameTF.snp.makeConstraints { make in
                make.top.equalTo(usernameLabel.snp.bottom).offset(6)
                make.leading.trailing.equalToSuperview().inset(30)
                make.height.equalTo(48)
            }
            view.addSubview(emailLabel)
            emailLabel.snp.makeConstraints { make in
                make.top.equalTo(usernameTF.snp.bottom).offset(6)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(27)
            }
            view.addSubview(emailTF)
            emailTF.snp.makeConstraints { make in
                make.top.equalTo(emailLabel.snp.bottom).offset(6)
                make.leading.trailing.equalToSuperview().inset(30)
                make.height.equalTo(48)
            }
            view.addSubview(numberLabel)
            numberLabel.snp.makeConstraints { make in
                make.top.equalTo(emailTF.snp.bottom).offset(6)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(27)
            }
            view.addSubview(numberTF)
            numberTF.snp.makeConstraints { make in
                make.top.equalTo(numberLabel.snp.bottom).offset(6)
                make.leading.trailing.equalToSuperview().inset(30)
                make.height.equalTo(48)
            }
            view.addSubview(passwordLabel)
            passwordLabel.snp.makeConstraints { make in
                make.top.equalTo(numberTF.snp.bottom).offset(6)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(27)
            }
            view.addSubview(passwordTF)
            passwordTF.snp.makeConstraints { make in
                make.top.equalTo(passwordLabel.snp.bottom).offset(6)
                make.leading.trailing.equalToSuperview().inset(30)
                make.height.equalTo(48)
            }
            view.addSubview(eyeBtn)
            eyeBtn.snp.makeConstraints{ make in
                make.width.height.equalTo(25)
                make.trailing.equalToSuperview().offset(-50)
                make.top.equalTo(numberTF.snp.bottom).offset(49)
            }
            view.addSubview(loginBtn)
            loginBtn.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(40)
                make.height.equalTo(48)
                make.top.equalTo(passwordTF.snp.bottom).offset(26)
            }
        }
        
        private func isTextFieldFilled(textField : UITextField) -> Bool {
                    guard let text = textField.text else { return false }
                if text.isEmpty {
                    textField.layer.borderWidth = 1
                    textField.layer.borderColor = UIColor.red.cgColor
                    return false
                }else{
                    textField.layer.borderWidth = 0
                    return true
                }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            setUpSubViews()
        }
    
        @objc func login(_ sender: UIButton) {
            if isTextFieldFilled(textField: usernameTF) && isTextFieldFilled(textField: emailTF) && isTextFieldFilled(textField: numberTF) && isTextFieldFilled(textField: passwordTF){
                let vc = ThirdViewController()
                vc.email = emailTF.text ?? ""
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }
    
}
