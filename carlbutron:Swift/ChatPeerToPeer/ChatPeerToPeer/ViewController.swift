//
//  ViewController.swift
//  ChatPeerToPeer
//
//  Created by Carlos Butron on 07/12/14.
//  Copyright (c) 2015 Carlos Butron. All rights reserved.
//

import UIKit
import MultipeerConnectivity

class ViewController: UIViewController,  MCSessionDelegate, MCBrowserViewControllerDelegate,UITextFieldDelegate {
    var browserVC:MCBrowserViewController!
    var advertiserAssistant: MCAdvertiserAssistant!
    var session: MCSession!
    var peerID: MCPeerID!
    
    @IBAction func button(sender: UIButton) {
        showBrowserVC()
    }
    
    @IBOutlet weak var textBox: UITextView!
    @IBOutlet weak var sendText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpMultipeer()
    }
    
    func setUpMultipeer(){
        peerID = MCPeerID(displayName: UIDevice.currentDevice().name)
        session = MCSession(peer: peerID)
        session.delegate = self
        browserVC = MCBrowserViewController(serviceType: "chat", session: session)
        browserVC.delegate = self
        advertiserAssistant = MCAdvertiserAssistant(serviceType: "chat", discoveryInfo: nil, session: session)
        advertiserAssistant.start()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func sendMessage(){
        let message:NSString = self.sendText.text!
        self.sendText.text = ""
        let data :NSData = message.dataUsingEncoding(NSUTF8StringEncoding)!
        var error:NSError?
        do {
            try self.session.sendData(data, toPeers:
                self.session.connectedPeers, withMode: MCSessionSendDataMode.Unreliable)
        } catch let error1 as NSError {
            error = error1
        }
        NSLog("%@", error!)
        self.messageReception(message, peer: self.peerID)
    }
    
    func messageReception(message:NSString, peer:MCPeerID){
        var finalText:NSString
        if(peer == self.peerID){
            finalText = "\nYo: \(message)"
        }
        else{
            finalText = "\n\(peer.displayName): \(message)"
        }
        self.textBox.text =
            self.textBox.text.stringByAppendingString(finalText as String)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        self.sendMessage()
        return true
    }
    
    func session(session: MCSession, peer peerID: MCPeerID, didChangeState state: MCSessionState){
    }
    
    func session(session: MCSession, didReceiveData data: NSData, fromPeer peerID: MCPeerID){
        let message = NSString(data: data, encoding: NSUTF8StringEncoding)
        dispatch_async(dispatch_get_main_queue(),
            {self.messageReception(message!, peer: peerID)})
    }
    
    func session(session: MCSession, didReceiveStream stream: NSInputStream, withName streamName: String, fromPeer peerID:MCPeerID){
    }
    func session(session: MCSession, didStartReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, withProgress progress: NSProgress){
    }
    func session(session: MCSession, didFinishReceivingResourceWithName resourceName: String, fromPeer peerID: MCPeerID, atURL localURL: NSURL, withError error: NSError?){
    }
    
    func browserViewControllerDidFinish(browserViewController: MCBrowserViewController){
        self.dismissBrowserVC()
    }
    
    // Notifies delegate that the user taps the cancel button.
    func browserViewControllerWasCancelled(browserViewController: MCBrowserViewController){
        self.dismissBrowserVC()
    }
    
    func showBrowserVC(){
        self.presentViewController(self.browserVC, animated: true, completion: nil)
    }
    
    func dismissBrowserVC(){
        self.browserVC.dismissViewControllerAnimated(true, completion: nil) }
    
}
