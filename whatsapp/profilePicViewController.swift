//
//  profilePicViewController.swift
//  whatsapp
//
//  Created by apple on 28/12/23.
//

import UIKit

class profilePicViewController: UIViewController{
    @IBOutlet weak var xBtn: UIButton!
    var perImg = ["chris hemsworth","katherin langford","christian bale","sadie sink","mammootty","natlie portman","henry cavil","elisabeth olsen","di caprio","kristen stewart"]
    
  var getValue = Int()
    

    @IBOutlet weak var profilePicViewImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        profilePicViewImage.image = UIImage(named: perImg[getValue])
        
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //
        ////            let width: CGFloat = 160.0
        ////            let height: CGFloat = 505.0
        //            self.view.frame = CGRect(
        //                x: 10,
        //                y: 100,
        //                width: 324,
        //                height: 324
        //            )
        
        let initialFrame = CGRect(
//                x: 10,
//                y: 100,
//                width: 100,
//                height: 100
            )
            self.view.frame = initialFrame

            // Set the final position
            let finalFrame = CGRect(
                x: 75,
                y: 300,
                width: 250,
                height: 250
            )

            // Animate the transition from the initial to the final position
        UIView.animate(withDuration: 0.3, animations: {
                self.view.frame = finalFrame
            }) { (completed) in
                // Animation completion block (if needed)
                if completed {
                    print("Animation completed")
                }
            }
        
    }


    @IBAction func xBtnAction(_ sender: Any) {
        dismissWithAnimation()
        
        //self.dismiss(animated: true, completion: nil)
        //self.dismiss(animated: false, completion: nil)
    }
    
   
    func dismissWithAnimation() {
           UIView.animate(withDuration: 0.3, animations: {
               self.view.transform = CGAffineTransform(scaleX: 0.01, y: 0.01)
           }) { (_) in
               self.dismiss(animated: false, completion: nil)
           }
       }
    
    
}
