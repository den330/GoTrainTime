//
//  ViewController.swift
//  GoTrainTime
//
//  Created by Yaxin Yuan on 2017/1/16.
//  Copyright © 2017年 Yaxin Yuan. All rights reserved.
//

import UIKit

class SelectionViewController: UIViewController {
    
    var fromField: UITextField!
    var verticalConForFromField: NSLayoutConstraint!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        addFromField()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        verticalConForFromField.constant = 0
        UIView.animate(withDuration: 2.0, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func addFromField(){
        fromField = UITextField()
        fromField.placeholder = "From"
        fromField.backgroundColor = UIColor.gray
        fromField.textColor = UIColor.orange
        let horizontalCon = NSLayoutConstraint(item: fromField, attribute: NSLayoutAttribute.centerX, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerX, multiplier: 1, constant: 0)
        verticalConForFromField = NSLayoutConstraint(item: fromField, attribute: NSLayoutAttribute.centerY, relatedBy: NSLayoutRelation.equal, toItem: view, attribute: NSLayoutAttribute.centerY, multiplier: 1, constant: -500)
        let widthCon = NSLayoutConstraint(item: fromField, attribute: NSLayoutAttribute.width, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightCon = NSLayoutConstraint(item: fromField, attribute: NSLayoutAttribute.height, relatedBy: NSLayoutRelation.equal, toItem: nil, attribute: NSLayoutAttribute.notAnAttribute, multiplier: 1, constant: 30)
        
        fromField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fromField)
        view.addConstraints([horizontalCon, verticalConForFromField, widthCon, heightCon])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

