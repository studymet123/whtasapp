//
//  SettingsViewController.swift
//  whatsapp
//
//  Created by apple on 28/12/23.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var btnsNewGroup: UIButton!
    @IBOutlet weak var paymentBtn: UIButton!
    
    @IBOutlet weak var setingsBtn: UIButton!
    @IBOutlet weak var staredBtn: UIButton!
    @IBOutlet weak var linkedBtn: UIButton!
    @IBOutlet weak var newBroadBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btnsNewGroup.layer.borderWidth = 0.2
        btnsNewGroup.layer.borderColor = UIColor.lightGray.cgColor
        paymentBtn.layer.borderWidth = 0.2
        paymentBtn.layer.borderColor = UIColor.lightGray.cgColor
        setingsBtn.layer.borderWidth = 0.2
        setingsBtn.layer.borderColor = UIColor.lightGray.cgColor
        staredBtn.layer.borderWidth = 0.2
        staredBtn.layer.borderColor = UIColor.lightGray.cgColor
        linkedBtn.layer.borderWidth = 0.2
        linkedBtn.layer.borderColor = UIColor.lightGray.cgColor
        newBroadBtn.layer.borderWidth = 0.2
        newBroadBtn.layer.borderColor = UIColor.lightGray.cgColor
    }
    override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()

            let width: CGFloat = 160.0
            let height: CGFloat = 305.0
            self.view.frame = CGRect(
                x: 225,
                y: 100,
                width: width,
                height: height
            )
        }


    @IBAction func newGrpBtn(_ sender: Any) {
        
        //self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: false, completion: nil)
//                let tooltipTwoVC = SettingsViewController
//                tooltipTwoVC.modalPresentationStyle = .overCurrentContext
//                if let presentingViewController = presentingViewController {
//                        presentingViewController.present(tooltipTwoVC, animated: false, completion: nil)
//                    }
//                }
        
    }
    
}
//(self.view.superview!.bounds.width - width) / 2
//(self.view.superview!.bounds.height - height) / 2
