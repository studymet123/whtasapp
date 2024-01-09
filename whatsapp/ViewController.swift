//
//  ViewController.swift
//  whatsapp
//
//  Created by apple on 18/12/23.
//

import UIKit


class ViewController: UIViewController {
    
    var call = ["christian bale"]
    var perImg = ["chris hemsworth","katherin langford","christian bale","sadie sink","mammootty","natlie portman","henry cavil","elisabeth olsen","di caprio","kristen stewart"]
    func whatsappCalls(callList: Int) {
        call.insert(perImg[callList],at: 0)
        print(callList)
        tableView.reloadData()
    }
    
    
    var checkCondition = 0
    var TheId = Int()
    var callPersonId = String()
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var threeDotBtn: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    var opt = ["Chats","Updates","Calls"]
    
    
    
    
    
    var calldate = ["december 19 , 2023","october 1 , 2023","september 5 , 2023"]
    var callPageThreeProfileImg = ["BIRD","car52"]
    var callPageThreeImg = ["BOAT","car32"]
    //    call.insert(callPersonId, at:0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        tableView.register(UINib(nibName: "chatPage", bundle: nil), forCellReuseIdentifier: "chatPage")
        
        tableView.register(UINib(nibName: "statusPage", bundle: nil), forCellReuseIdentifier: "statusPage")
        tableView.register(UINib(nibName: "callPage", bundle: nil), forCellReuseIdentifier: "callPage")
        tableView.register(UINib(nibName: "callPageTableViewCellTwo", bundle: nil), forCellReuseIdentifier: "callPageTableViewCellTwo")
        tableView.register(UINib(nibName: "callPageTableViewCellThree", bundle: nil), forCellReuseIdentifier: "callPageTableViewCellThree")
        tableView.register(UINib(nibName: "callPageTableViewCellFour", bundle: nil), forCellReuseIdentifier: "callPageTableViewCellFour")
        
        
        
        if checkCondition == 1{
            self.tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        }else{
            tableView.separatorStyle = .singleLine
        }
        
        
        
        
    }

    
    @IBAction func threeBtnAction(_ sender: Any) {
        

        
        let menu = SettingsViewController()
        menu.modalPresentationStyle = .overCurrentContext
        present(menu, animated: false, completion: nil)
       
                }
    
    
    }
    


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "titleWhatsApp", for: indexPath)as! pagesCollectionViewCell
        cell.btnOpt.tag = indexPath.row
        
        
        if indexPath.row == 0{
            cell.btnOpt.setTitle("Chats", for: .normal)
        }
        if indexPath.row == 1{
            cell.btnOpt.setTitle("Status", for: .normal)
        }
        if indexPath.row == 2{
            cell.btnOpt.setTitle("Calls", for: .normal)
        }
        
        cell.btnOpt.addTarget(self, action: #selector(yourFunc), for: .touchUpInside)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! PersonChatViewController
        destination.toGetValue = TheId
        
    }
    
    
}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if checkCondition == 0{
            return 1
        }else if checkCondition == 1{
            return 4
        }else{
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if checkCondition == 0{
            return 10
        }
        else if checkCondition == 1{
            
            if section == 2{
                return 2
            }else{
                return 1
            }
            
        }
        else{
            
            if section == 0{
                return call.count
            }
            else {         //if section == 1
                return 1
            }
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch checkCondition {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "chatPage", for: indexPath) as! chatPage
            cell.persName.text = perImg[indexPath.row]
            cell.profileBtn.tag = indexPath.row
            cell.profileBtn.addTarget(self, action: #selector(yourFuncNumberTwo), for: .touchUpInside)
            
            //cell.profilePic.setImage(UIImage(named: "icons8-search-30"), for: .normal)
            cell.proImg.image = UIImage(named: perImg[indexPath.row])
            return cell
        case 1:
            if indexPath.section == 0{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "callPage", for: indexPath)as! callPage
                return cell
                
            }else if indexPath.section == 1{
                
                let cell = tableView.dequeueReusableCell(withIdentifier: "callPageTableViewCellTwo", for: indexPath)as! callPageTableViewCellTwo
                self.tableView.sectionIndexBackgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
                return cell
                
            }else if indexPath.section == 2{
                let cell = tableView.dequeueReusableCell(withIdentifier: "callPageTableViewCellThree", for: indexPath)as! callPageTableViewCellThree
                cell.proImg.image = UIImage(named: callPageThreeProfileImg[indexPath.row])
                cell.topicImage.image = UIImage(named: callPageThreeImg[indexPath.row])
                return cell
                
            }else if indexPath.section == 3{
                let cell = tableView.dequeueReusableCell(withIdentifier: "callPageTableViewCellFour", for: indexPath)as! callPageTableViewCellFour
                return cell
            }
            
            
        case 2:
            
            
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "statusPage", for: indexPath)as! statusPage
            cell.statusImage.image = UIImage(named: call[indexPath.row])
            cell.statusName.text = call[indexPath.row]
            return cell
            
        default:
            print("hi")
            
        }
        
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if checkCondition == 0{
            TheId = indexPath.row
            performSegue(withIdentifier: "toChatPage", sender: self)
            
        }
        
    }
    
    @objc func yourFunc(sender : UIButton){
        
        
        checkCondition = sender.tag
        tableView.reloadData()
        
    }
    
    @objc func yourFuncNumberTwo(sender : UIButton){
        
        var profiPerson = sender.tag
        print(profiPerson)
        let profileView = profilePicViewController()
        
        profileView.getValue = profiPerson
        profileView.view.frame = sender.convert(sender.bounds, to: view)
        profileView.view.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        profileView.modalPresentationStyle = .overCurrentContext
        //present(profileView, animated: true, completion: nil)
        present(profileView, animated: false) {
                
                UIView.animate(withDuration: 0.5, animations: {
                   // profileView.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                    profileView.view.transform = .identity
                })
            }
        
    }
    
    
}



