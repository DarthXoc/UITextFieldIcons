//
//  TextFieldIconsViewController.swift
//  UITextField+Icons
//
//  Created by Jason Cox on 4/3/20.
//  Copyright © 2020 Jason Cox. All rights reserved.
//

import UIKit

class TextFieldIconsViewController: UIViewController, UITextFieldDelegate, UITextFieldIconsDelegate {

    // MARK: - IBOutlets
    @IBOutlet internal var textFieldIconCode1: UITextField_Icons!;
    @IBOutlet internal var textFieldIconCode2: UITextField_Icons!;
    @IBOutlet internal var textFieldIconStoryboard1: UITextField_Icons!;
    @IBOutlet internal var textFieldIconStoryboard2: UITextField_Icons!;
    
    // MARK: - General Functions
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        // Configure the top text field
        textFieldIconCode1.placeholder = "Default Colors (Non-Interactive)";
        textFieldIconCode1.delegate = self;
        textFieldIconCode1.leadingIcon = UIImage(systemName: "person.crop.circle.fill");
        textFieldIconCode1.trailingIcon = UIImage(systemName: "exclamationmark.triangle.fill");
        
        // Configure the bottom text field
        textFieldIconCode2.placeholder = "Custom Colors (Interactive)";
        textFieldIconCode2.delegate = self;
        textFieldIconCode2.leadingColor = .link;
        textFieldIconCode2.leadingIcon = UIImage(systemName: "person.crop.circle.fill");
        textFieldIconCode2.leadingTapAction = {
            print("Closure: You have tapped on the leading icon");
        }
        textFieldIconCode2.trailingColor = .red;
        textFieldIconCode2.trailingIcon = UIImage(systemName: "exclamationmark.triangle.fill");
        textFieldIconCode2.trailingTapAction = {
            print("Closure: You have tapped on the trailing icon");
        }
    }
    
    // MARK: - Delegates
    
    internal func UITextFieldIconsLeadingIcon_Tap(sender: UITextField_Icons) {
        // Check to see which control is the sender
        switch sender {
            case textFieldIconCode1:
                // Execute code specific to textFieldIconCode1
                print("Delegate Method: You have tapped on the leading icon in textFieldIconCode1");
            case textFieldIconStoryboard1:
                // Execute code specific to textFieldIconStoryboard1
                print("Delegate Method: You have tapped on the leading icon in textFieldIconStoryboard1");
            default:
                // The sender is should execute a default action
                print("Delegate Method: You have tapped on the leading icon");
        }
    }
    
    internal func UITextFieldIconsTrailingIcon_Tap(sender: UITextField_Icons) {
        // Check to see which control is the sender
        switch sender {
            case textFieldIconCode1:
                // Execute code specific to textFieldIconCode1
                print("Delegate Method: You have tapped on the trailing icon in textFieldIconCode1");
            case textFieldIconStoryboard1:
                // Execute code specific to textFieldIconStoryboard1
                print("Delegate Method: You have tapped on the trailing icon in textFieldIconStoryboard1");
            default:
                // The sender is should execute a default action
                print("Delegate Method: You have tapped on the trailing icon");
        }
    }
}
