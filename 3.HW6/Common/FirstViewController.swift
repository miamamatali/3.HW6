//
//  FirstViewController.swift
//  3.HW6
//
//  Created by Indira on 14/3/23.
//

import UIKit
import SnapKit

class FirstViewController: UIViewController {

    let welcomeLabel: UILabel = {
           let label = UILabel()
            label.text = "Welcome"
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 28)
            label.textAlignment = .center
           return label
        }()
        let loginLabel: UILabel = {
           let label = UILabel()
            label.text = "Login to your account"
            label.textColor = .white
            label.font = .systemFont(ofSize: 20)
            label.textAlignment = .center
           return label
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
             tf.placeholder = "\tEmail"
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
             tf.placeholder = "\tPassword"
             tf.layer.cornerRadius = 12
             tf.layer.backgroundColor = UIColor.white.cgColor
             return tf
        }()
        let forgotPasswordLabel: UILabel = {
           let label = UILabel()
            label.text = "Forgot Password?"
            label.textColor = .red
            label.font = .systemFont(ofSize: 16)
            label.textAlignment = .center
           return label
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
        let dontHaveLabel: UILabel = {
           let label = UILabel()
            label.text = "Don’t have account?"
            label.textColor = .gray
            label.font = .systemFont(ofSize: 16)
            label.textAlignment = .center
           return label
        }()
        let createNowBtn: UIButton = {
           let button = UIButton()
            button.setTitle("Create Now", for: .normal)
            button.layer.cornerRadius = 16
            button.tintColor = .white
            return button
        }()
        let googleImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "google")
           return image
        }()
        let facebookImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "facebook")
           return image
        }()
        let instagramImage: UIImageView = {
           let image = UIImageView()
           image.image = UIImage(named: "instagram")
           return image
        }()
      
        private func setUpSubViews(){
            view.backgroundColor = .black
            
            view.addSubview(welcomeLabel)
            welcomeLabel.snp.makeConstraints { make in
                make.height.equalTo(42)
                make.top.equalToSuperview().offset(250)
                make.leading.trailing.equalToSuperview().inset(120)
            }
            
            view.addSubview(loginLabel)
            loginLabel.snp.makeConstraints { make in
                make.height.equalTo(30)
                make.centerX.equalToSuperview()
                make.top.equalTo(welcomeLabel.snp.bottom).offset(0)
            }
            
            view.addSubview(emailLabel)
            emailLabel.snp.makeConstraints { make in
                make.height.equalTo(27)
                make.top.equalTo(loginLabel.snp.bottom).offset(25)
                make.leading.equalToSuperview().offset(30)
            }
            
            view.addSubview(emailTF)
            emailTF.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(30)
                make.top.equalTo(emailLabel.snp.bottom).offset(6)
                make.height.equalTo(48)
            }
            
            view.addSubview(passwordLabel)
            passwordLabel.snp.makeConstraints { make in
                make.height.equalTo(27)
                make.top.equalTo(emailTF.snp.bottom).offset(6)
                make.leading.equalToSuperview().offset(30)
            }
            
            view.addSubview(passwordTF)
            passwordTF.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(30)
                make.top.equalTo(passwordLabel.snp.bottom).offset(4)
                make.height.equalTo(48)
            }
            
            view.addSubview(eyeBtn)
            eyeBtn.snp.makeConstraints{ make in
                make.width.height.equalTo(25)
                make.trailing.equalToSuperview().offset(-50)
                make.top.equalTo(emailTF.snp.bottom).offset(49)
            }
            view.addSubview(forgotPasswordLabel)
            forgotPasswordLabel.snp.makeConstraints { make in
                make.height.equalTo(24)
                make.top.equalTo(passwordTF.snp.bottom).offset(7)
                make.trailing.equalToSuperview().offset(-30)
            }
            
            view.addSubview(loginBtn)
            loginBtn.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(40)
                make.height.equalTo(48)
                make.top.equalTo(passwordTF.snp.bottom).offset(59)
            }
            
            view.addSubview(dontHaveLabel)
            dontHaveLabel.snp.makeConstraints { make in
                make.height.equalTo(24)
                make.leading.equalToSuperview().offset(60)
                make.top.equalTo(loginBtn.snp.bottom).offset(14)
            }
            
            view.addSubview(createNowBtn)
            createNowBtn.snp.makeConstraints { make in
                make.leading.equalTo(dontHaveLabel.snp.trailing).offset(10)
                make.height.equalTo(24)
                make.top.equalTo(loginBtn.snp.bottom).offset(14)
            }
            
            view.addSubview(googleImage)
            googleImage.snp.makeConstraints { make in
                make.width.height.equalTo(30)
                make.leading.equalToSuperview().offset(100)
                make.top.equalTo(dontHaveLabel.snp.bottom).offset(50)
            }
            view.addSubview(facebookImage)
            facebookImage.snp.makeConstraints { make in
                make.width.height.equalTo(30)
                make.leading.equalTo(googleImage.snp.trailing).offset(60)
                make.top.equalTo(dontHaveLabel.snp.bottom).offset(50)
            }
            view.addSubview(instagramImage)
            instagramImage.snp.makeConstraints { make in
                make.width.height.equalTo(30)
                make.trailing.equalToSuperview().offset(-100)
                make.top.equalTo(dontHaveLabel.snp.bottom).offset(50)
            }
            
        }
        private func isTextFieldFilled(textField : UITextField) {
                    guard let text = textField.text else { return }
                if text.isEmpty {
                    textField.layer.borderWidth = 1
                    textField.layer.borderColor = UIColor.red.cgColor
                    //return false
                }else{
                    textField.layer.borderWidth = 0
                    //return true
                }
        }
        override func viewDidLoad() {
            super.viewDidLoad()
            setUpSubViews()
        }
        
        @objc func goToNextPage(_ sender: UIButton) {
            let vc = SecondViewController()
            self.navigationController?.pushViewController(vc, animated: true)

        }
        @objc func login(_ sender: UIButton) {
            isTextFieldFilled(textField: emailTF)
            isTextFieldFilled(textField: passwordTF)
        }

}
