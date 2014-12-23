//
//  ViewController.swift
//  tuesday
//
//  Created by Nathan Cazell on 12/18/14.
//  Copyright (c) 2014 Nathan Cazell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var countdown: UILabel!
    @IBOutlet var feed: UITableView!
    
    // messages array
    var chats: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.feed.registerClass(UITableViewCell.self, forCellReuseIdentifier: "chat")
        
        self.countdown.text = "110:22:33"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // chat input logic
    @IBAction func newChat(sender: UITextField) {
        chats.append(sender.text)
        
        self.feed.reloadData()
        sender.text = ""
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.chats.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell:UITableViewCell = self.feed.dequeueReusableCellWithIdentifier("chat") as UITableViewCell
        
        cell.textLabel?.text = self.chats[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
}

