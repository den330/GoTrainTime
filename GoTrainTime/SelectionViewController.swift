//
//  ViewController.swift
//  GoTrainTime
//
//  Created by Yaxin Yuan on 2017/1/16.
//  Copyright © 2017年 Yaxin Yuan. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    var inputField: UITextField!
    var verticalConForFromField: NSLayoutConstraint!
    var enterButton: UIButton!
    var inputStage: InputStage!
    
    enum InputStage{
        case fromStage
        case toStage
        case pickTimeStage
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        inputStage = .fromStage
        addInputField()
        addEnterButton()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        verticalConForFromField.constant = 0
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func addInputField(){
        inputField = UITextField()
        inputField.placeholder = "From"
        inputField.backgroundColor = UIColor.green
        inputField.textColor = UIColor.orange
        let horizontalCon = NSLayoutConstraint(item: inputField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        verticalConForFromField = NSLayoutConstraint(item: inputField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: -500)
        let widthCon = NSLayoutConstraint(item: inputField, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 150)
        let heightCon = NSLayoutConstraint(item: inputField, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 30)
        
        inputField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(inputField)
        view.addConstraints([horizontalCon, verticalConForFromField, widthCon, heightCon])
    }
    
    func addEnterButton(){
        enterButton = UIButton()
        enterButton.setTitle("Enter", for: .normal)
        enterButton.addTarget(self, action: #selector(hitEnter), for: .touchUpInside)
        enterButton.backgroundColor = UIColor.red
        let horizontalCon = NSLayoutConstraint(item: enterButton, attribute: NSLayoutAttribute.left, relatedBy: NSLayoutRelation.equal, toItem: inputField, attribute: NSLayoutAttribute.right, multiplier: 1, constant: 5)
        let verticalCon = NSLayoutConstraint(item: enterButton, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: 0)
        let widthCon = NSLayoutConstraint(item: enterButton, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 60)
        let heightCon = NSLayoutConstraint(item: enterButton, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 30)
        
        enterButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(enterButton)
        view.addConstraints([horizontalCon, verticalCon, widthCon, heightCon])
    }
    
    func hitEnter(){
        if let inputStage = inputStage{
            switch inputStage {
            case .fromStage:
                applyFromStageEnter()
            case .toStage:
                applyToStageEnter()
            case .pickTimeStage:
                applyPickTimeStageEnter()
            }
        }
    }
    
    func applyFromStageEnter(){
        print(inputField.text!)
        verticalConForFromField.constant = 600
        UIView.animate(withDuration: 1.0, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func applyToStageEnter(){
        
    }
    
    func applyPickTimeStageEnter(){
        
    }

}

