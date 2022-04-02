//
//  ViewController.swift
//  HelloSwift
//
//  Created by Papon Supamongkonchai on 2/4/2565 BE.
//

import UIKit
import RxSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        _ = Observable.from([1,2,3,4,5])
    }


}

