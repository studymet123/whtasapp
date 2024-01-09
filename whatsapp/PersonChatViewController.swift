//
//  PersonChatViewController.swift
//  whatsapp
//
//  Created by apple on 21/12/23.
//

import UIKit

class PersonChatViewController: UIViewController {
    var msgarray = ["hai"]
    
    @IBOutlet weak var callBtn: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    var toGetValue = Int()
    var perImg = ["chris hemsworth","katherin langford","christian bale","sadie sink","mammootty","natlie portman","henry cavil","elisabeth olsen","di caprio","kristen stewart"]

    @IBOutlet weak var personProfile: UIImageView!
    
    @IBOutlet weak var personName: UILabel!
    
    @IBOutlet weak var chatMsg: UITextView!
    
    
    @IBOutlet weak var chatMsgSendBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        chatMsg.becomeFirstResponder()
        
        personProfile.image = UIImage(named: perImg[toGetValue])
        personName.text =  perImg[toGetValue]
        personProfile.layer.cornerRadius =  0.5 * personProfile.bounds.size.width
        chatMsg.layer.cornerRadius = 13
        chatMsgSendBtn.layer.cornerRadius = 13
        
        
    }
    

    @IBAction func msgSndBtnAction(_ sender: UIButton) {
        
        var msgs = chatMsg.text
        if msgs != ""{
            msgarray.append(msgs!)
            tableView.reloadData()
        }else{
            print("no value")
        }
        
        chatMsg.text = ""
        
        
    }
    
    
    @IBAction func callBtnAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "toCallPage", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! callingInterfaceViewController
        
        destination.personId = toGetValue
        
       
    }
    
    

}
extension PersonChatViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return msgarray.count
    }
    
   
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatMsg", for: indexPath)as! PersonChatMsgTableViewCell
        cell.chatLabelMain.text = msgarray[indexPath.row]
        //cell.chatLabelMain.textColor = .black
        return cell
    }
    
    
}
