//
//  SSMainViewController.h
//  ColorPicker
//
//  Created by David Douglas on 4/26/12.
//  Copyright (c) 2012 Software Smoothie. All rights reserved.
//

#import "SSFlipsideViewController.h"
#import "SSColorPicker.h"
#import "NMCustomLabel.h"

@interface SSMainViewController : UIViewController <NMCustomLabelDelegate,SSFlipsideViewControllerDelegate, SSColorPickerDelegate>{
    
    
    
    NMCustomLabel *label1;
}

@property (strong,nonatomic) SSColorPicker *colorPicker;
@property (strong,nonatomic) IBOutlet UILabel *labl;
- (IBAction)showInfo:(id)sender;

@end
