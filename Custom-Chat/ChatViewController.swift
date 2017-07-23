//
//  ChatViewController.swift
//  Custom-Chat
//
//  Created by Bertuğ YILMAZ on 19/07/2017.
//  Copyright © 2017 bertug. All rights reserved.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var bottomView: UIView!     // View was used instead of toolbar because it is more useful :]
    @IBOutlet weak var tableView: UITableView!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.estimatedRowHeight = 140
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.keyboardSettings()
    }
    
    func keyboardSettings(){
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
    }
    
    func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
                self.view.frame.origin.y -= keyboardSize.height
        }
    }
    
    func keyboardWillHide(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIKeyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y != 0{
                self.view.frame.origin.y += keyboardSize.height
            }
        }
    }
}
extension ChatViewController : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "senderCell") as! SenderTableViewCell
        cell.senderImageView.layer.cornerRadius = 15
        cell.senderMessageTextView.layer.cornerRadius = 10
        
        cell.senderImageView.image = UIImage(named: "user")
        cell.senderMessageTextView.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut bibendum eleifend dui ac tristique. Donec tincidunt luctus facilisis. Nulla libero eros, iaculis nec gravida quis, luctus a mauris. Morbi pharetra mauris eget cursus dapibus. Morbi rutrum facilisis metus, ac volutpat libero tristique ut. Phasellus egestas lectus nec massa blandit, nec tempus nunc fermentum. Nulla facilisi. Vestibulum pulvinar, mi id semper porttitor, metus lectus fringilla mauris, vel molestie nisl lectus eget arcu. Aenean eget nisl ultricies, mollis magna et, lobortis nisi. Donec in placerat elit, at laoreet justo. Donec pretium mauris sapien, bibendum feugiat erat sagittis quis. Ut magna neque, vulputate non iaculis a, efficitur et nunc."
        cell.lastTimeLabel.text = "12.12.1212"
        return cell
    }
    
    

}

