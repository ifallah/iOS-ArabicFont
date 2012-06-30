//
//  NMViewController.m
//  CoreTextSample
//
//  Created by Robert Haining on 3/21/12.
//  Copyright (c) 2012 News.me. All rights reserved.
//

#import "NMViewController.h"
#import <dlfcn.h>
#import "UIView+Animation.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+Origami.h"
#import "MTStatusBarOverlay.h"
#import "SEFilterControl.h"


#import "STSegmentedControl.h"
#import "RCSwitchOnOff.h"
//#import "PopoverDemoController.h"
#import "CustomPopoverBackgroundView.h"
#import <QuartzCore/QuartzCore.h>
@interface NMViewController ()
{
    BOOL currDirection;
}

@end

@implementation NMViewController
@synthesize s1;
@synthesize s2;
@synthesize s3;
@synthesize tx;
@synthesize label1;
@synthesize pint;
@synthesize org;
@synthesize minu;
@synthesize centerView;
@synthesize sideView;
@synthesize foldsNum;
@synthesize durationNum;
@synthesize closeBtn;
@synthesize imageSize;
@synthesize fontLabel = _fontLabel;
@synthesize textview;
@synthesize bananaPan;
@synthesize monkeyPan;
@synthesize chompPlayer;
@synthesize hehePlayer;
@synthesize imgPicker;
@synthesize m;
@synthesize slider;
@synthesize tileController;








-(void)sss{
    
    [overlay postImmediateFinishMessage:@"11111" duration:3.2 animated:YES];
}
-(IBAction)SliderEnd:(id)sender{
    
  
    
    if ([contNO isEqualToString:@"1"]) {
        NSString *hm = [[NSString alloc] initWithFormat:@"اسم الخط المستخدم : %@",thefont];
        [overlay postImmediateFinishMessage:hm duration:2.2 animated:YES];
    }  
    else if ([contNO isEqualToString:@"2"]) {
        
        NSString *hm = [[NSString alloc] initWithFormat:@"حجم الخط الأن : %@",thesize];
        [overlay postImmediateFinishMessage:hm duration:2.2 animated:YES];        
        
    }  

    
}
-(IBAction)SliderAction:(id)sender{
    
    
    if ([contNO isEqualToString:@"1"]) {
        [label1 removeFromSuperview];
	slider = (UISlider *) sender;
	int progressAsInt =(int)(slider.value + 1.0f);
	NSString *newText =[[NSString alloc]
                        initWithFormat:@"%d",progressAsInt];
    int i;
    // NSString* newText1;
    
    i = [newText intValue];
    
    NSArray *f = [UIFont familyNames];
    
    NSString *fontName = [f objectAtIndex: i];
    thefont = [[NSString alloc] initWithFormat:@"%@",fontName ];
    
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
	label1.text = tx.text;
    
    int k;
    k = [thesize intValue];
	label1.font = [UIFont fontWithName:thefont size:k];
    //	[newText release];
    label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    [self.textview addSubview:label1];
    }  
    else if ([contNO isEqualToString:@"2"]) {
        
        [label1 removeFromSuperview];
        
        //label1 = Nil;
        slider = (UISlider *) sender;
        int progressAsInt =(int)(slider.value + 0.5f);
        thesize =[[NSString alloc]
                  initWithFormat:@"%d",progressAsInt];
        int i;
        // NSString* newText1;
        
        i = [thesize intValue];
        
        
        //  thefont = @"khalaad Hadeel";
        
        
        label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
        label1.text = tx.text;
        
        label1.font = [UIFont fontWithName:thefont size:i];
        
        //label1.kern = -0.1;
        //label1.textColor = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
        //label1.lineHeight = 28;
        
        label1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.0];
        
        // [org addSubview:pint];
        [textview addSubview:label1];

        
    }  
    
    
}

-(IBAction)captureScreen:(id)sender
{
    
     [overlay postImmediateFinishMessage:@"حفظ الصورة في البوم الصور" duration:3.0 animated:YES];
    [m removeFromSuperview];
    [_fontLabel setHidden:YES]; 
    
	UIGraphicsBeginImageContext(org.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    
    [self.view addSubview:m];
    [_fontLabel setHidden:NO];
    ////////////// Start Maher Alert ///////////////////////////////////////////////////////////////////////                                
    UIAlertView *MaherAlert = [[UIAlertView alloc] 
                               initWithTitle:@" حفظ الصورة "
                               message:@" لقد تم حفظ الصور بنجاح في البوم الصور الخاص بك "
                               delegate:self
                               cancelButtonTitle:@"موافق"
                               otherButtonTitles:nil, nil];
    
    [MaherAlert show];
    ////////////// End Maher Alert /////////////////////////////////////////////////////////////////////////                                

}

- (IBAction)grabImage {
    [self presentModalViewController:self.imgPicker animated:YES];
    [overlay postImmediateFinishMessage:@"اختيار صورة من البوم الصور " duration:5.0 animated:YES];
}

- (AVAudioPlayer *)loadWav:(NSString *)filename {
    NSURL * url = [[NSBundle mainBundle] URLForResource:filename withExtension:@"wav"];
    NSError * error;
    AVAudioPlayer * player = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
    if (!player) {
        NSLog(@"Error loading %@: %@", url, error.localizedDescription);
    } else {
        [player prepareToPlay];
    }
    return player;
}
- (IBAction)showPicker:(id)sender {
	ARFontPickerViewController *controller = [[ARFontPickerViewController alloc] initWithStyle:UITableViewStylePlain];
	controller.delegate = self;
	[self presentModalViewController:controller animated:YES];
    [overlay postImmediateFinishMessage:@"قائمة الخطوط المتوفرة بالبرنامج " duration:5.0 animated:YES];
	//[controller release];
}

- (void)fontPickerViewController:(ARFontPickerViewController *)fontPicker didSelectFont:(NSString *)fontName {
    [label1 removeFromSuperview];
	//self.fontLabel.text = fontName;
    NSString * thend = [[NSString alloc] initWithFormat:@"اسم الخط : %@",fontName];
     [overlay postImmediateFinishMessage:thend duration:5.0 animated:YES];
    thefont= fontName;
	self.fontLabel.font = [UIFont fontWithName:fontName size:[UIFont smallSystemFontSize]];
	[fontPicker dismissModalViewControllerAnimated:YES];
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
	label1.text = tx.text;
    
    int k;
    k = [thesize intValue];
	label1.font = [UIFont fontWithName:thefont size:k];
    //	[newText release];
    label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    [self.textview addSubview:label1];

}

-(IBAction) s2:(id) sender{
    
    [label1 removeFromSuperview];
	UISlider *slider1 = (UISlider *) sender;
	int progressAsInt =(int)(slider1.value + 1.0f);
	NSString *newText =[[NSString alloc]
                        initWithFormat:@"%d",progressAsInt];
    int i;
    // NSString* newText1;
    
    i = [newText intValue];
    
   NSArray *f = [UIFont familyNames];
    
    NSString *fontName = [f objectAtIndex: i];
    thefont = [[NSString alloc] initWithFormat:@"%@",fontName ];
    
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
	label1.text = tx.text;
    
    int k;
    k = [thesize intValue];
	label1.font = [UIFont fontWithName:thefont size:k];
    //	[newText release];
    label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    [self.textview addSubview:label1];
    //[label1 release];
}


-(IBAction) sliderChanged:(id) sender{
    //label1.backgroundColor = Nil;
[label1 removeFromSuperview];
    
    //label1 = Nil;
	UISlider *slider1 = (UISlider *) sender;
	int progressAsInt =(int)(slider1.value + 0.5f);
	thesize =[[NSString alloc]
                        initWithFormat:@"%d",progressAsInt];
    int i;
   // NSString* newText1;
    
    i = [thesize intValue];
    
   
  //  thefont = @"khalaad Hadeel";
    
    
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
	label1.text = tx.text;
    
	label1.font = [UIFont fontWithName:thefont size:i];
    
	//label1.kern = -0.1;
	//label1.textColor = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
	//label1.lineHeight = 28;
    
    label1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.0];
    
   // [org addSubview:pint];
	[textview addSubview:label1];
}

-(IBAction)se:(id)sender{
    
     [label1 removeFromSuperview];
    //thefont = @"khalaad Hadeel";
    int i;
    thesize = @"22";
     i = [thesize intValue];
 
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(0, 0, self.textview.frame.size.width+20, 400)];
	label1.text = tx.text;

	label1.font = [UIFont fontWithName:thefont size:i];

	//label1.kern = -0.1;
	//label1.textColor = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
	//label1.lineHeight = 26;
    
    label1.backgroundColor = [UIColor colorWithWhite:0 alpha:0.0];
    
     // [org addSubview:pint];
	[textview addSubview:label1];
    [tx resignFirstResponder];
   
    
}
-(IBAction)gg:(id)sender{


    [UIView animateWithDuration:1.0 animations:^{
        [minu raceTo:CGPointMake(0, -360) withSnapBack:NO];
        
        
    }completion:^(BOOL finished){
        
         }];
}

-(IBAction)cc:(id)sender{
    
    
    [UIView animateWithDuration:1.0 animations:^{
        [minu raceTo:CGPointMake(0, 180) withSnapBack:YES];
        
        
    }completion:^(BOOL finished){
        
    }];
}
-(void)minua{
    
    /////////// My animations to do animations ///////////
 [UIView animateWithDuration:1.0 animations:^{
 [minu raceTo:CGPointMake(0, 180) withSnapBack:NO];
   
 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:2.5 animations:^{
 overlay = [MTStatusBarOverlay sharedInstance];
     overlay.animation = MTStatusBarOverlayAnimationShrink;  // MTStatusBarOverlayAnimationShrink
     overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking and show in detail-view
   //  overlay.delegate = self;
     overlay.progress = 0.0;
     [overlay postImmediateFinishMessage:@"التأكد من الخطوط " duration:3.0 animated:YES];
     //[overlay postMessage:@"السلام عليكم"];
     overlay.progress = 0.1;
 }completion:^(BOOL finished){
 [UIView animateWithDuration:1.5 animations:^{
     
     [self sefilt];
    // [overlay postImmediateFinishMessage:@"Following was a good idea!" duration:1.0 animated:YES];
     overlay.progress = 1.0;
   // overlay.progress = 0.0;
  
     
     
    
     
 
 }];
 }];
 }];
//////////// (((( End My Animations )))) /////////// 

    
}

//-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
//    
//    UITouch *touch = [[event allTouches] anyObject];
//    if([touch view] == textview){
//        CGPoint location = [touch locationInView:self.view];
//        textview.center = location;
//        return;
//        
//    }
//    
//}

-(void)sefilt{
    
    
    SEFilterControl *filter = [[SEFilterControl alloc]initWithFrame:CGRectMake(10, 20, 300, 70) Titles:[NSArray arrayWithObjects:@"السلام عليكم", @"News", @"Updates", @"Featured", @"Newest", @"Oldest", nil]];
    [filter addTarget:self action:@selector(filterValueChanged:) forControlEvents:UIControlEventValueChanged];
   // [self.view addSubview:filter];
}
-(void)filterValueChanged{


}
-(void)filterValueChanged:(SEFilterControl *) sender{
  //  [selectedIndex setText:[NSString stringWithFormat:@"%d", sender.SelectedIndex]];
}
//- (void)handleRotate:(UIRotationGestureRecognizer *)recognizer {
//    if(recognizer.state == UIGestureRecognizerStateBegan || 
//       recognizer.state == UIGestureRecognizerStateChanged)
//    {
//        recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, 
//                                                            recognizer.rotation);
//        [recognizer setRotation:0];
//    }
//}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {
    imageSize.image = img;
    [[picker parentViewController] dismissModalViewControllerAnimated:YES];
    [imgPicker dismissModalViewControllerAnimated:YES];
}
-(IBAction)AskFont:(id)sender{
    
contNO = @"1";
    /////////// My animations to do animations ///////////
 [UIView animateWithDuration:2.0 animations:^{
     
     NSString* giga = [[NSString alloc] initWithFormat:@"%d", [[UIFont familyNames] count]];
     NSLog(@"XX%@XX",giga);

   NSString* gig = [[NSString alloc] initWithFormat:@"%d", [[UIFont familyNames] count]-5];
   //  j int;NSLog(@"XX%@XX",giga);
    NSLog(@"XX%@XX",gig);
     float f = [gig floatValue];
     
     [slider setMaximumValue:f];
     
     NSString* gi = [[NSString alloc] initWithFormat:@"%@",thesize];
     //  j int;
     
     float ff = [gi floatValue];
     [slider setValue:ff];
     
     [slider setAlpha:1.0];
     
 }completion:^(BOOL finished){
 
 }];
//////////// (((( End My Animations )))) /////////// 

}
-(IBAction)AskSize:(id)sender{
    
    contNO = @"2";
    /////////// My animations to do animations ///////////
    [UIView animateWithDuration:1.5 animations:^{
        
        
        
        
        NSString* gig = [[NSString alloc] initWithFormat:@"55"];
        //  j int;
        
        float f = [gig floatValue];
        
        [slider setMaximumValue:f];
        NSString* gi = [[NSString alloc] initWithFormat:@"%@",thesize];
        //  j int;
        
        float ff = [gi floatValue];
        [slider setValue:ff];
        
        
        [slider setAlpha:1.0];
        
    }completion:^(BOOL finished){
       
        
        
    }];

    
    
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    
    UITapGestureRecognizer *doubleTapRecognizerL = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
	doubleTapRecognizerL.numberOfTapsRequired = 2;
	doubleTapRecognizerL.delegate = self;
	[pint addGestureRecognizer:doubleTapRecognizerL];
	
	UITapGestureRecognizer *tapRecognizerL = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
	tapRecognizerL.delegate = self;
	[pint addGestureRecognizer:tapRecognizerL];
    
//    [slider addTarget:self action:@selector(sss:) 
//       forControlEvents:UIControlEventTouchUpInside];
//    
    
    //[slider addTarget:self action:@selector(touchEnded:)
   //  forControlEvents:UIControlEventTouchUpInside];
    
    contNO = @"2";
    
    [slider setAlpha:0.0];
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * 1.5);
    slider.transform = trans;
    s1.transform = trans;
    s2.transform = trans;
    
   [self hhh];
 thefont= @"Elham";
  thesize = @"22";  
    currDirection = XYOrigamiDirectionFromLeft;
    
       [self minua];
    
    self.imgPicker = [[UIImagePickerController alloc] init];
   // self.imgPicker.allowsImageEditing = YES;
    self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
//    UIRotationGestureRecognizer *rotationGesture = 
//    [[UIRotationGestureRecognizer alloc] initWithTarget:self
//                                                 action:@selector(handleRotate:)];
//    //rotationGesture.delegate = self;
//    [textview addGestureRecognizer:rotationGesture];
//   // [rotationGesture release];

    
    
/*
	NMCustomLabel *label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(30, 15, self.view.frame.size.width-60, 200)];
	label1.text = @"السلام عليكم ورحمة الله وبركاته Hello iFallaH";
	label1.font = [UIFont fontWithName:@"khalaad Hadeel" size:28];
	//label1.fontBold = [UIFont fontWithName:@"PT Bold Broken" size:16];
	//label1.fontItalic = [UIFont fontWithName:@"khalaad Hadeel" size:16];
	//label1.kern = -0.1;
	label1.textColor = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
	//label1.textColorBold = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
	label1.lineHeight = 28;
	[self.view addSubview:label1];
	
//	NMCustomLabel *label2 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(30, 125, self.view.frame.size.width-60, 250)];
//	label2.text = @"You think water هل تفكر بالماء";
//    
//    
//	label2.font = [UIFont fontWithName:@"HelveticaNeue" size:12];
//	label2.fontBold = [UIFont fontWithName:@"Georgia-Bold" size:16];
//	label2.fontItalic = [UIFont fontWithName:@"Verdana-Italic" size:15];
//	label2.kern = 0.6;
//	label2.textColor = [UIColor colorWithRed:60/255.0 green:87/255.0 blue:186/255.0 alpha:1.0];
//	label2.textColorBold = [UIColor colorWithRed:98/255.0 green:186/255.0 blue:60/255.0 alpha:1.0];
//	label2.lineHeight = 16;
//	[self.view addSubview:label2];
//	
//	NMCustomLabel *label3 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(30, 400, self.view.frame.size.width-60, 50)];
//	label3.text = @"Dig the text هل الكتابة ممتعة يا ماهر ";
//	label3.shouldBoldAtNames = YES;
//	label3.shouldLinkTypes = kNMShouldLinkURLs | kNMShouldLinkUsernames;
//	label3.delegate = self;
//	label3.linkColor = [UIColor colorWithRed:0 green:102/255.0 blue:153/255.0 alpha:1];
//	label3.activeLinkColor = [UIColor colorWithRed:0 green:170/255.0 blue:255/255.0 alpha:1];
//	label3.font = [UIFont fontWithName:@"HelveticaNeue" size:12];
//	label3.kern = 0.6;
//	label3.textColor = [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1.0];
//	label3.lineHeight = 16;
//	[self.view addSubview:label3];
 
 */
    
//    for (UIView * view in self.view.subviews) {
//        
//        UITapGestureRecognizer * recognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleTap:)];
//        recognizer.delegate = self;
//        [view addGestureRecognizer:recognizer];
//        [recognizer requireGestureRecognizerToFail:monkeyPan];
//        [recognizer requireGestureRecognizerToFail:bananaPan];
//        
//        // TODO: Add a custom gesture recognizer too
//        TickleGestureRecognizer * recognizer2 = [[TickleGestureRecognizer alloc] initWithTarget:self action:@selector(handleTickle:)];
//        recognizer2.delegate = self;
//        [view addGestureRecognizer:recognizer2];
//        
//    }
//    
//    self.chompPlayer = [self loadWav:@"chomp"];
//    self.hehePlayer = [self loadWav:@"hehehe1"];
}
-(void)hhh {
    NSLog(@"add font is no : %d",[[UIFont familyNames] count]);
    //#import <dlfcn.h>
    //[self hhh];
    NSUInteger loadFonts();{
        NSUInteger newFontCount = 0;
        NSBundle *frameworkBundle = [NSBundle bundleWithIdentifier:@"com.apple.GraphicsServices"];
        const char *frameworkPath = [[frameworkBundle executablePath] UTF8String];
        if (frameworkPath) {
            void *graphicsServices = dlopen(frameworkPath, RTLD_NOLOAD | RTLD_LAZY);
            if (graphicsServices) {
                BOOL (*GSFontAddFromFile)(const char *) = dlsym(graphicsServices, "GSFontAddFromFile");
                if (GSFontAddFromFile)
                    for (NSString *fontFile in [[NSBundle mainBundle] pathsForResourcesOfType:@"ttf" inDirectory:nil])
                        newFontCount += GSFontAddFromFile([fontFile UTF8String]);
                NSLog(@"add font is no : %d",[[UIFont familyNames] count]);
NSLog(@"add font is no : %@",[UIFont familyNames] );
            }
        }
        //  return newFontCount;
        
    }
    
}

- (void)viewDidUnload
{
    [self setCenterView:nil];
    [self setSideView:nil];
    [self setFoldsNum:nil];
    [self setDurationNum:nil];
    [self setCloseBtn:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
	    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
	} else {
	    return YES;
	}
}

#pragma mark - NMCustomLabelDelegate






/////////////////////////////////////////////////

- (IBAction)swipeLeft:(id)sender {
    
//    [overlay postImmediateFinishMessage:@"اظهار قائمة التعديل" duration:1.0 animated:YES];
//    overlay.progress = 1.0;
//    
//    CGSize imageSize = self.bounds.size;
//    if (NULL != UIGraphicsBeginImageContextWithOptions)
//        UIGraphicsBeginImageContextWithOptions(imageSize, NO, 0);
//    else
//        UIGraphicsBeginImageContext(imageSize);
//    
//    CGContextRef context = UIGraphicsGetCurrentContext();
//    
//    // Iterate over every window from back to front
//    for (UIWindow *window in [[UIApplication sharedApplication] windows]) 
//    {
//        if (![window respondsToSelector:@selector(screen)] || [window screen] == [UIScreen mainScreen])
//        {
//            // -renderInContext: renders in the coordinate space of the layer,
//            // so we must first apply the layer's geometry to the graphics context
//            CGContextSaveGState(context);
//            // Center the context around the window's anchor point
//            CGContextTranslateCTM(context, [window center].x, [window center].y);
//            // Apply the window's transform about the anchor point
//            CGContextConcatCTM(context, [window transform]);
//            // Offset by the portion of the bounds left of and above the anchor point
//            CGContextTranslateCTM(context,
//                                  -[window bounds].size.width * [[window layer] anchorPoint].x,
//                                  -[window bounds].size.height * [[window layer] anchorPoint].y);
//            
//            // Render the layer hierarchy to the current context
//            [[window layer] renderInContext:context];
//            
//            // Restore the context
//            CGContextRestoreGState(context);
//        }
//    }
    
    if (currDirection == XYOrigamiDirectionFromLeft) {
        [slider setAlpha:0.0];
        self.closeBtn.hidden = YES;
        [self.centerView hideOrigamiTransitionWith:self.sideView
                                     NumberOfFolds:2
                                          Duration:0.5
                                         Direction:XYOrigamiDirectionFromLeft
                                        completion:^(BOOL finished) {
                                        }];
    }
    else {
        [slider setAlpha:0.0];
        [self.centerView showOrigamiTransitionWith:self.sideView
                                     NumberOfFolds:2
                                          Duration:0.5
                                         Direction:XYOrigamiDirectionFromRight
                                        completion:^(BOOL finished) {
                                            self.closeBtn.hidden = NO;
                                        }];
    }
    
    
    
}

- (IBAction)swipeRight:(id)sender {
    if (currDirection == XYOrigamiDirectionFromLeft) {
        
        [slider setAlpha:0.0];
        [self.centerView showOrigamiTransitionWith:self.sideView
                                     NumberOfFolds:2 
                                          Duration:0.5
                                         Direction:XYOrigamiDirectionFromLeft
                                        completion:^(BOOL finished) {
                                            self.closeBtn.hidden = NO;
                                        }];
    }
    else {
        self.closeBtn.hidden = YES;
        [self.centerView hideOrigamiTransitionWith:self.sideView
                                     NumberOfFolds:2
                                          Duration:0.5
                                         Direction:XYOrigamiDirectionFromRight
                                        completion:^(BOOL finished) {
                                        }];
    }
}

- (IBAction)showMap:(id)sender {
    [slider setAlpha:0.0];
    [self.centerView showOrigamiTransitionWith:self.sideView
                                 NumberOfFolds:2
                                      Duration:0.5
                                     Direction:currDirection
                                    completion:^(BOOL finished) {
                                        self.closeBtn.hidden = NO;
                                    }];
}

- (IBAction)foldNumberChanged:(UIStepper *)stepper {
    self.foldsNum.text = [NSString stringWithFormat:@"%d",(int)stepper.value];
}

- (IBAction)durationSliderChanged:(UISlider *)slider {
   // self.durationNum.text = [NSString stringWithFormat:@"%.1f", slider.value];
}

- (IBAction)directionSelectorChanged:(UISegmentedControl*)seg 
{
    if (seg.selectedSegmentIndex == 0) {
        currDirection = XYOrigamiDirectionFromLeft;
        self.closeBtn.frame = CGRectMake(20, 405, 40, 30);
    }
    else {
        currDirection = XYOrigamiDirectionFromRight;
        self.closeBtn.frame = CGRectMake(260, 405, 40, 30);
    }
}

- (IBAction)hideMap:(id)sender {
    self.closeBtn.hidden = YES;
    [self.centerView hideOrigamiTransitionWith:self.sideView
                                 NumberOfFolds:2
                                      Duration:0.5
                                     Direction:currDirection
                                    completion:^(BOOL finished) {
                                    }];
}




/////////////////////////////////////////////////////
- (IBAction)handlePan:(UIPanGestureRecognizer *)recognizer {
    
    // Comment for panning
    // Uncomment for tickling
    //return;
    
    CGPoint translation = [recognizer translationInView:self.view];
    recognizer.view.center = CGPointMake(recognizer.view.center.x + translation.x, 
                                         recognizer.view.center.y + translation.y);
    [recognizer setTranslation:CGPointMake(0, 0) inView:self.view];
    
    if (recognizer.state == UIGestureRecognizerStateEnded) {
        
        CGPoint velocity = [recognizer velocityInView:self.view];
        CGFloat magnitude = sqrtf((velocity.x * velocity.x) + (velocity.y * velocity.y));
        CGFloat slideMult = magnitude / 200;
        NSLog(@"magnitude: %f, slideMult: %f", magnitude, slideMult);
        
        float slideFactor = 0.1 * slideMult; // Increase for more of a slide
        CGPoint finalPoint = CGPointMake(recognizer.view.center.x + (velocity.x * slideFactor), 
                                         recognizer.view.center.y + (velocity.y * slideFactor));
        finalPoint.x = MIN(MAX(finalPoint.x, 0), self.view.bounds.size.width);
        finalPoint.y = MIN(MAX(finalPoint.y, 0), self.view.bounds.size.height);
        
        [UIView animateWithDuration:slideFactor*2 delay:0 options:UIViewAnimationOptionCurveEaseOut animations:^{
            recognizer.view.center = finalPoint;
        } completion:nil];
        
    }
    
}

- (IBAction)handlePinch:(UIPinchGestureRecognizer *)recognizer {
    
    recognizer.view.transform = CGAffineTransformScale(recognizer.view.transform, recognizer.scale, recognizer.scale);
    recognizer.scale = 1;
    
}

- (IBAction)handleRotate:(UIRotationGestureRecognizer *)recognizer {
    
    recognizer.view.transform = CGAffineTransformRotate(recognizer.view.transform, recognizer.rotation);
    recognizer.rotation = 0;
    
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer {        
    return YES;
}

- (void)handleTap:(UITapGestureRecognizer *)recognizer {    
    [self.chompPlayer play];
}

- (void)handleTickle:(TickleGestureRecognizer *)recognizer {
    [self.hehePlayer play];
}












//////////////////////////////////////////////////////////////////////////



#pragma mark - TileMenu delegate


- (NSInteger)numberOfTilesInMenu:(MGTileMenuController *)tileMenu
{
	return 9;
}


- (UIImage *)imageForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	NSArray *images = [NSArray arrayWithObjects:
					   @"twitter", 
					   @"key", 
					   @"speech", 
					   @"magnifier", 
					   @"scissors", 
					   @"actions", 
					   @"Text", 
					   @"heart", 
					   @"gear", 
					   nil];
	if (tileNumber >= 0 && tileNumber < images.count) {
		return [UIImage imageNamed:[images objectAtIndex:tileNumber]];
	}
	
	return [UIImage imageNamed:@"Text"];
}


- (NSString *)labelForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	NSArray *labels = [NSArray arrayWithObjects:
					   @"Twitter", 
					   @"Key", 
					   @"Speech balloon", 
					   @"Magnifying glass", 
					   @"Scissors", 
					   @"Actions", 
					   @"Text", 
					   @"Heart", 
					   @"Settings", 
					   nil];
	if (tileNumber >= 0 && tileNumber < labels.count) {
		return [labels objectAtIndex:tileNumber];
	}
	
	return @"Tile";
}


- (NSString *)descriptionForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	NSArray *hints = [NSArray arrayWithObjects:
                      @"Sends a tweet", 
                      @"Unlock something", 
                      @"Sends a message", 
                      @"Zooms in", 
                      @"Cuts something", 
                      @"Shows export options", 
                      @"Adds some text", 
                      @"Marks something as a favourite", 
                      @"Shows some settings", 
                      nil];
	if (tileNumber >= 0 && tileNumber < hints.count) {
		return [hints objectAtIndex:tileNumber];
	}
	
	return @"It's a tile button!";
}


- (UIImage *)backgroundImageForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	if (tileNumber == 1) {
		return [UIImage imageNamed:@"purple_gradient"];
	} else if (tileNumber == 4) {
		return [UIImage imageNamed:@"orange_gradient"];
	} else if (tileNumber == 7) {
		return [UIImage imageNamed:@"red_gradient"];
	} else if (tileNumber == 5) {
		return [UIImage imageNamed:@"yellow_gradient"];
	} else if (tileNumber == 8) {
		return [UIImage imageNamed:@"green_gradient"];
	} else if (tileNumber == -1) {
		return [UIImage imageNamed:@"grey_gradient"];
	}
	
	return [UIImage imageNamed:@"blue_gradient"];
}


- (BOOL)isTileEnabled:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
    //	if (tileNumber == 1 || tileNumber == 6) {
    //		return NO;
    //	}
	
	return YES;
}


- (void)tileMenu:(MGTileMenuController *)tileMenu didActivateTile:(NSInteger)tileNumber
{
	NSLog(@"Tile %d activated (%@)", tileNumber, [self labelForTile:tileNumber inMenu:tileController]);
}


- (void)tileMenuDidDismiss:(MGTileMenuController *)tileMenu
{
	tileController = nil;
}


#pragma mark - Gesture handling


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
	// Ensure that only touches on our own view are sent to the gesture recognisers.
    
    //"""""
	if (touch.view == pint) {
		return YES;
	}
	
	return YES;
}


- (void)handleGesture:(UIGestureRecognizer *)gestureRecognizer
{
	// Find out where the gesture took place.
     //"""""
	CGPoint loc = [gestureRecognizer locationInView:pint];
	if ([gestureRecognizer isMemberOfClass:[UITapGestureRecognizer class]] && ((UITapGestureRecognizer *)gestureRecognizer).numberOfTapsRequired == 2) {
		// This was a double-tap.
		// If there isn't already a visible TileMenu, we should create one if necessary, and show it.
		if (!tileController || tileController.isVisible == NO) {
			if (!tileController) {
				// Create a tileController.
				tileController = [[MGTileMenuController alloc] initWithDelegate:self];
				tileController.dismissAfterTileActivated = NO; // to make it easier to play with in the demo app.
			}
			// Display the TileMenu.
             //"""""
			[tileController displayMenuCenteredOnPoint:loc inView:pint];
		}
		
	} else {
		// This wasn't a double-tap, so we should hide the TileMenu if it exists and is visible.
		if (tileController && tileController.isVisible == YES) {
			// Only dismiss if the tap wasn't inside the tile menu itself.
			if (!CGRectContainsPoint(tileController.view.frame, loc)) {
				[tileController dismissMenu];
			}
		}
	}
}


#pragma mark - View lifecycle


//- (void)viewDidLoad
//{
//    [super viewDidLoad];
//	
//	// Set up recognizers.
//	UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
//	doubleTapRecognizer.numberOfTapsRequired = 2;
//	doubleTapRecognizer.delegate = self;
//	[self.view addGestureRecognizer:doubleTapRecognizer];
//	
//	UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
//	tapRecognizer.delegate = self;
//	[self.view addGestureRecognizer:tapRecognizer];
//}


//- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
//{
//    // Return YES for supported orientations
//    return YES;
//}


@end
