//
//  MLGViewController.h
//  MGTileMenu
//
//  Created by Matt Gemmell on 27/01/2012.
//  Copyright (c) 2012 Instinctive Code.
//

#import <UIKit/UIKit.h>
#import "MGTileMenuController.h"
#import "NMCustomLabel.h"
#import "TickleGestureRecognizer.h"
#import "MTStatusBarOverlay.h"
#import <AVFoundation/AVFoundation.h>
#import "NMAppDelegate.h"
#import "SSFlipsideViewController.h"
#import "SSColorPicker.h"
#import "BlockAlertView.h"

@interface MLGViewController : UIViewController <UIImagePickerControllerDelegate,UIGestureRecognizerDelegate,NMCustomLabelDelegate,MGTileMenuDelegate,UITextViewDelegate,UINavigationControllerDelegate, SSColorPickerDelegate>{
    
    BlockAlertView *al;
     MTStatusBarOverlay *overlay;
     NMCustomLabel *label1;
    
    NMCustomLabel *TEXT;
     UIImagePickerController *imgPicker;
    
    
    IBOutlet UITextView *TheTextF;
    IBOutlet UIView *TheTextFview;
    IBOutlet UIView *TheSlidrView;
     IBOutlet UIView *TheCalorView;
    IBOutlet UISlider * slider;
     IBOutlet UISlider * RotatSlider;
    IBOutlet UISlider * FeedSlider;
    NSString *contNO;
    //NSString *thefont;
    NSString *thesize;
    UIColor *thecalor;
    UIColor*color1;
    
    CGFloat h;
    
    CGPoint po;
    
     NSString *ClozOpen;
   // NSString *globalString ;
    
    IBOutlet UIImageView *UserImg;
    IBOutlet UILabel *ShadowLabl;
    
    
    
    
    
    /////////////
    
   //  CGPoint startLocation;
}
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *dismissButton;
@property (nonatomic,retain) NMCustomLabel *TEXT;
@property (strong,nonatomic)  IBOutlet UISlider * FeedSlider;
@property (strong,nonatomic)  IBOutlet UISlider * RotatSlider;
@property (strong,nonatomic) IBOutlet UILabel *labl;
@property (strong,nonatomic) IBOutlet UILabel *ShadowLabl;
@property (strong, nonatomic) IBOutlet UISlider * ShadowUpDawnSlider;
@property (strong, nonatomic) IBOutlet UISlider * ShadowLeftRghitSlider;
@property (strong, nonatomic) IBOutlet UISlider * ShadowBlurSlider;
@property (strong, nonatomic) BlockAlertView *al;


@property (strong,nonatomic) SSColorPicker *colorPicker;
@property (strong,nonatomic) UIColor*color1;
- (IBAction)showInfo:(id)sender;
@property (strong, nonatomic) MGTileMenuController *tileController;
@property (strong, nonatomic) IBOutlet UIView *pint;
@property (strong, nonatomic) IBOutlet UIView *TextView;
@property (strong, nonatomic) IBOutlet UIView *ShadowCalorView;
@property (strong, nonatomic) IBOutlet UITextView *TheTextF;
@property (strong, nonatomic) IBOutlet UIView *TheTextFview;
@property (strong, nonatomic) IBOutlet UIView *TheSlidrView;
@property (strong, nonatomic) IBOutlet UISlider * slider;
@property (strong, nonatomic) IBOutlet UIImageView * UserImg;

@property (strong, nonatomic) IBOutlet UIImageView * hand;

@property (nonatomic,retain) UIImagePickerController *imgPicker;
@property (nonatomic,retain) IBOutlet UIView *TheCalorView;
@property (nonatomic,retain) IBOutlet UILabel *label4;
@property (strong, nonatomic) IBOutlet UIView *FeedSliderView;
@property (strong, nonatomic) IBOutlet UIView *SliderRotatView;
@property (strong, nonatomic) IBOutlet UIView *ForTestView;
@property (strong, nonatomic) IBOutlet UIView *come;

@property (strong, nonatomic) IBOutlet UIButton *bDone;
@property (strong, nonatomic) IBOutlet UIButton *Caler;
//- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer;
-(IBAction)SliderAction:(id)sender;
-(IBAction)ForTest:(id)sender;
-(IBAction)DoText;
-(IBAction)HideAll;
- (IBAction)dismissKeyboard:(id)sender;
-(IBAction)SliderRotet:(id)sender;
-(IBAction)SliderFeed:(id)sender;
-(IBAction)ms7:(id)sender;

//- (void)showInfo1:(id)sender;


-(IBAction)ShadowBlurSliderAction:(id)sender;
-(IBAction)ShadowUpDawnSliderAction:(id)sender;
-(IBAction)ShadowLeftRghitSliderAction:(id)sender;
-(IBAction)itsDONE:(id)sender;

-(void)TEXTlb;
@end
