//
//  ThirdViewController.swift
//  3.HW6
//
//  Created by Indira on 14/3/23.
//

import UIKit

class ThirdViewController: UIViewController {
   
        let forgotPasswordLabel: UILabel = {
           let label = UILabel()
            label.text = "Forgot Password"
            label.textColor = .white
            label.font = .boldSystemFont(ofSize: 24)
            label.textAlignment = .center
           return label
        }()
        let emailLabel: UILabel = {
           let label = UILabel()
            label.text = "Enter your email"
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
        let chooseLabel: UILabel = {
           let label = UILabel()
            label.text = "Choose another method"
            label.textColor = .gray
            label.font = .systemFont(ofSize: 18)
            label.textAlignment = .center
           return label
        }()
        let needHelpBtn: UIButton = {
           let button = UIButton()
            button.setTitle("Need Help?", for: .normal)
            button.layer.cornerRadius = 16
            button.tintColor = .white
            return button
        }()
        let loginBtn: UIButton = {
           let button = UIButton()
            button.setTitle("Send OTP", for: .normal)
            button.layer.cornerRadius = 16
            button.tintColor = .white
            button.backgroundColor = .systemBlue
            return button
        }()
        private func setUpSubViews(){
            view.backgroundColor = .black
            
            view.addSubview(forgotPasswordLabel)
            forgotPasswordLabel.snp.makeConstraints { make in
                make.height.equalTo(36)
                make.top.equalToSuperview().offset(231)
                make.leading.trailing.equalToSuperview().inset(87)
            }
            view.addSubview(emailLabel)
            emailLabel.snp.makeConstraints { make in
                make.top.equalTo(forgotPasswordLabel.snp.bottom).offset(61)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(27)
            }
            view.addSubview(emailTF)
            emailTF.snp.makeConstraints { make in
                make.top.equalTo(emailLabel.snp.bottom).offset(6)
                make.leading.trailing.equalToSuperview().inset(30)
                make.height.equalTo(48)
            }
            view.addSubview(chooseLabel)
            chooseLabel.snp.makeConstraints { make in
                make.top.equalTo(emailTF.snp.bottom).offset(11)
                make.leading.equalToSuperview().offset(30)
                make.height.equalTo(24)
            }
            view.addSubview(needHelpBtn)
            needHelpBtn.snp.makeConstraints { make in
                make.top.equalTo(emailTF.snp.bottom).offset(11)
                make.trailing.equalToSuperview().offset(-30)
                make.height.equalTo(24)
            }
            view.addSubview(loginBtn)
            loginBtn.snp.makeConstraints { make in
                make.top.equalTo(chooseLabel.snp.bottom).offset(22)
                make.trailing.leading.equalToSuperview().inset(47)
                make.height.equalTo(48)
            }
        }
        var email: String = ""
        override func viewDidLoad() {
            super.viewDidLoad()
            setUpSubViews()
            emailTF.text = email
        }

}
