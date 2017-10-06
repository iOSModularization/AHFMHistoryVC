//
//  ViewController.swift
//  AHFMHistoryVC
//
//  Created by ivsall2012 on 08/28/2017.
//  Copyright (c) 2017 ivsall2012. All rights reserved.
//

import UIKit
import AHServiceRouter
import AHFMBottomPlayerManager
import AHFMAudioPlayerVCManager
import AHFMHistoryVCServices
import AHFMHistoryVCManager

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        AHFMBottomPlayerManager.activate()
        AHFMHistoryVCManager.activate()
        AHFMAudioPlayerVCManager.activate()
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        guard let navVC = self.navigationController else {
            return
        }
        let type: AHServiceNavigationType = .push(navVC:navVC)
        
        AHServiceRouter.navigateVC(AHFMHistoryVCServices.service, taskName: AHFMHistoryVCServices.taskNavigation, userInfo: [:], type: type, completion: nil)
    }

}

