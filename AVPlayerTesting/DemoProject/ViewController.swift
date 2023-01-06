//
//  ViewController.swift
//  DemoProject
//
//  Created by Dhananjay Kumar on 29/08/22.
//

import UIKit
import MediaPlayer
import AVKit
import AVFoundation

@objc protocol ProtocolExtension{
    func add()
   @objc optional func substract()
}
class ViewController: UIViewController {

    var player: AVPlayer!
    var playerViewController: AVPlayerViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let result = addTwoNumberUsingClosure(5, 4)
        print(result)
        
        
        // initialize generic class with Int data
        var intObj = Information<Int>(data: 6)
        print("Generic Class returns:", intObj.getData())
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        AVPlayerVideo()
    }

    //using closure
    var addTwoNumberUsingClosure:(Int,Int)->Int = {
        num1,num2 in return num1 + num2
        
    }
  /*  func addToNumber(first:Int,second:Int)->Int{
        return first + second
    }
    */

}

class abcd{
    
}

// create a generic class
class Information<T> {

  // property of T type
  var data: T

  init (data: T) {
    self.data = data
  }

  // method that return T type variable
  func getData() -> T {
    return self.data
  }
}
extension ViewController:ProtocolExtension{
    func add() {
        print("one")
    }
}

//extension Information:ProtocolExtension{
//
//}
extension abcd:ProtocolExtension{
    func add() {
        print("one")
    }
}

extension ViewController{
    func AVPlayerVideo(){

        let videoURL = URL(string: "http://jplayer.org/video/m4v/Big_Buck_Bunny_Trailer.m4v")
        self.player = AVPlayer(url: videoURL!)
        self.playerViewController = AVPlayerViewController()
        playerViewController.player = self.player
        playerViewController.view.frame = self.view.frame
        playerViewController.player?.pause()
        self.view.addSubview(playerViewController.view)
    }
}

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Create the view controllers for the tab bar
        let vc1 = UIViewController()
        vc1.view.backgroundColor = .red
        vc1.tabBarItem = UITabBarItem(title: "VC1", image: nil, selectedImage: nil)

        let vc2 = UIViewController()
        vc2.view.backgroundColor = .green
        vc2.tabBarItem = UITabBarItem(title: "VC2", image: nil, selectedImage: nil)

        // Set the view controllers for the tab bar
        self.viewControllers = [vc1, vc2]
    }

}
