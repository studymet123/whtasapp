//
//  callingInterfaceViewController.swift
//  whatsapp
//
//  Created by apple on 22/12/23.
//

import UIKit

protocol callAdding{
   func whatsappCalls(callList:Int)
}

class callingInterfaceViewController: UIViewController {
    
    var mike = true
    var speaker = true
    var video = true
    var myDelegate : callAdding?
    
    var perImg = ["chris hemsworth","katherin langford","christian bale","sadie sink","mammootty","natlie portman","henry cavil","elisabeth olsen","di caprio","kristen stewart"]
    var personId = Int()
    //var imageForPerson = String()

    @IBOutlet weak var muteBtn: UIButton!
    @IBOutlet weak var videoBtn: UIButton!
    @IBOutlet weak var speakerBtn: UIButton!
    @IBOutlet weak var personImageView: UIImageView!
    @IBOutlet weak var cutCallBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        

        // Do any additional setup after loading the view.
        personImageView.image = UIImage(named: perImg[personId])
        cutCallBtn.layer.cornerRadius = 0.5 * cutCallBtn.bounds.size.width
        
    }
    @IBAction func cutBtnAction(_ sender: Any) {
        
        myDelegate?.whatsappCalls(callList: personId)
        print(personId)
        print("hello")
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func speakerBtnAction(_ sender: UIButton) {
        if  speaker {
                muteBtn.setImage(UIImage(named: "icons8-speaker-off-42"), for: .normal)
            } else {
                muteBtn.setImage(UIImage(named: "icons8-speaker-42"), for: .normal)
            }
        speaker = !speaker
        
        
    }
    @IBAction func videoBtnAction(_ sender: UIButton) {
        
        if  video {
                videoBtn.setImage(UIImage(named: "icons8-video-off-42"), for: .normal)
            } else {
                videoBtn.setImage(UIImage(named: "icons8-video-camera-42"), for: .normal)
            }
            video = !video
        
        
    }
    @IBAction func mikeBtnAction(_ sender: UIButton) {
        
        
        if  mike {
            speakerBtn.setImage(UIImage(named: "icons8-mute-42"), for: .normal)
            } else {
                speakerBtn.setImage(UIImage(named: "icons8-mike-42"), for: .normal)
            }
            mike = !mike
        
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        let nxtDes = segue.destination as! ViewController
//        nxtDes.callPersonId = perImg[personId]
//    }
    

    

}
