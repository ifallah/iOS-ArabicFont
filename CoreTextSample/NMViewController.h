//
//  NMViewController.h
//  CoreTextSample
//
//  Created by Robert Haining on 3/21/12.
//  Copyright (c) 2012 News.me. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NMCustomLabel.h"
#import "MTStatusBarOverlay.h"
 
#import "ARFontPickerViewController.h"
#import <AVFoundation/AVFoundation.h>
#import "TickleGestureRecognizer.h"
#import "MGTileMenuController.h"

@interface NMViewController : UIViewController <MGTileMenuDelegate,NMCustomLabelDelegate,ARFontPickerViewControllerDelegate,UIGestureRecognizerDelegate,UINavigationControllerDelegate, UIImagePickerControllerDelegate>{
    
  IBOutlet   UITextField * tx;
  IBOutlet  UISlider *s1;
   IBOutlet  UISlider *s2;
    IBOutlet  UISlider *s3;
      NMCustomLabel *label1;
    
    
    
    NSString * contNO;
    
    
    NSString * thefont;
    NSString * thesize;
   IBOutlet UIView *pint;
    IBOutlet UIView *org;
    int *uu;
    IBOutlet UIView *minu;
     MTStatusBarOverlay *overlay;
    IBOutlet UIImageView *imageSize;
    UILabel *_fontLabel;
    UIImagePickerController *imgPicker;
    
    IBOutlet UISlider * slider;
}

@property (strong) AVAudioPlayer * chompPlayer;
- (void)handleTap:(UITapGestureRecognizer *)recognizer;

@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *monkeyPan;
@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *bananaPan;

@property (strong) AVAudioPlayer * hehePlayer;
- (void)handleTickle:(TickleGestureRecognizer *)recognizer;

@property (nonatomic,retain) IBOutlet UISlider * slider;

@property (nonatomic,retain) UIImagePickerController *imgPicker;
@property (nonatomic,retain) IBOutlet   UITextField * tx;
@property (nonatomic,retain)IBOutlet  UISlider *s1;
@property (nonatomic,retain)IBOutlet  UISlider *s2;
@property (nonatomic,retain)IBOutlet  UISlider *s3;
@property (nonatomic,strong)NMCustomLabel *label1;
@property (nonatomic,retain)IBOutlet UIView *pint;
@property (nonatomic,retain)IBOutlet UIView *org;
@property (nonatomic,retain)IBOutlet UIView *minu;
@property (nonatomic,retain)IBOutlet UIImageView *imageSize;
@property (strong, nonatomic) IBOutlet UIView *centerView;
@property (strong, nonatomic) IBOutlet UIView *sideView;
@property (strong, nonatomic) IBOutlet UILabel *foldsNum;
@property (strong, nonatomic) IBOutlet UILabel *durationNum;
@property (strong, nonatomic) IBOutlet UIButton *closeBtn;
@property(nonatomic,retain)	IBOutlet	UILabel *fontLabel;
@property (nonatomic,retain)IBOutlet UIView *textview;
@property (nonatomic,retain)IBOutlet UIView *m;




- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;
- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer;
- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer;


-(IBAction)captureScreen:(id)sender;
- (IBAction)grabImage;
- (IBAction)swipeLeft:(id)sender;
-(IBAction)se:(id)sender;
-(IBAction) sliderChanged:(id) sender;
-(IBAction) s2:(id) sender;
-(IBAction)gg:(id)sender;
-(IBAction)cc:(id)sender;
- (IBAction)showPicker:(id)sender;
-(IBAction)SliderAction:(id)sender;
-(IBAction)SliderEnd:(id)sender;
-(IBAction)AskFont:(id)sender;
-(IBAction)AskSize:(id)sender;

@property (strong, nonatomic) MGTileMenuController *tileController;
@end
