//
//  ViewController.swift
//  InteractiveDemo
//
//  Created by Roydon Jeffrey on 12/13/16.
//  Copyright © 2016 Italyte. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var spinner: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        spinner.stopAnimating()
        spinner.hidesWhenStopped = true
        
        /*
         
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false, block: { timer in
            
            self.spinner.stopAnimating()
            
        })
        
        //Alert View
        let alert = UIAlertController(title: "Greetings", message: "There was an error", preferredStyle: .actionSheet)
        alert.addTextField(configurationHandler: { tf in
            tf.backgroundColor = UIColor.red
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(cancelAction)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            self.spinner.startAnimating()
        })
        alert.addAction(okAction)
        
        present(alert, animated: true, completion: nil)
         
        */
        
        
        //Share Sheet View
        let shareSheet = UIActivityViewController(activityItems: ["Hello there"], applicationActivities: nil)
        
        present(shareSheet, animated: true, completion: {
            print("sharesheet showing up")
        })
        
    }


}

