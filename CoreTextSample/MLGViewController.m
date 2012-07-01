//
//  MLGViewController.m
//  MGTileMenu
//
//  Created by Matt Gemmell on 27/01/2012.
//  Copyright (c) 2012 Instinctive Code.
//
#import <QuartzCore/QuartzCore.h>
#import "MLGViewController.h"
#import "MTStatusBarOverlay.h"
#import <dlfcn.h>
#import "UIView+Animation.h"
#import "UIView+Origami.h"
#import "SEFilterControl.h"
#import "STSegmentedControl.h"
#import "RCSwitchOnOff.h"
#import "NMAppDelegate.h"
#import "UIViewController+KNSemiModal.h"



#import "Draggable.h"

/////  do the global dor the string ////
//#import "Globals.h"
//#import "PopoverDemoController.h"
#import "CustomPopoverBackgroundView.h"
@implementation MLGViewController
#pragma mark - (synthesize)
@synthesize TheCalorView;
@synthesize tileController;
@synthesize TextView;
@synthesize TheTextF;
@synthesize TheTextFview;
@synthesize slider;
@synthesize TheSlidrView;
@synthesize imgPicker;
@synthesize UserImg;
@synthesize colorPicker;
@synthesize labl;
@synthesize color1;
@synthesize label4;
@synthesize RotatSlider;
@synthesize FeedSlider;
@synthesize ShadowLabl;
@synthesize ShadowCalorView;
@synthesize ShadowUpDawnSlider;
@synthesize ShadowLeftRghitSlider;
@synthesize ShadowBlurSlider;
@synthesize FeedSliderView;
@synthesize SliderRotatView;
@synthesize hand;
@synthesize TEXT;
@synthesize ForTestView;
@synthesize come;
@synthesize bDone;
@synthesize Caler;
@synthesize al;
@synthesize dismissButton;
@synthesize pint;
-(void)TEXTlb{
    
    //hand its photo not us
  //hand =  [[UIImageView alloc] initWithFrame:CGRectMake(50, 160, self.TextView.frame.size.width, h)];
   // hand.contentMode = UIViewContentModeCenter;
    
    // qeyas al msafah 
    
    h=   100+thesizef+[TheTextF.text length];
    //// 7thf al  ketaba
    [TEXT removeFromSuperview];
    /// benaa al ketaba
    TEXT = [[NMCustomLabel alloc] initWithFrame:CGRectMake(PontUp, PontLeft, self.TextView.frame.size.width, h)];
    
    /// ktabt men text view
	TEXT.text = TheTextF.text;
    
    // a7`tyar al 7`6
	TEXT.font = [UIFont fontWithName:thefont size:thesizef];
    
    
    
    // make the background Color emty
    TEXT.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];

    
    ///// kern zero 
    [TEXT setKern:0];
    
    
    

    /// the font color 
    TEXT.textColor = thecalor;
    
    // the font rotat
    TEXT.transform = Rotate;
    
   // the font alpha 
    [TEXT setAlpha:AlphaFloat];
    
    /// show in the end to the screen 
    [pint addSubview:TEXT];
    
    
}

#pragma mark - TileMenu delegate

-(void)SliderFeed:(id)sender{
    
    FeedSlider = (UISlider *) sender;
    

    
    AlphaFloat = FeedSlider.value;
    NSLog(@"XX%fXX",AlphaFloat);
    
    [self TEXTlb];
    
    
   
    
    
}

-(void)SliderRotet:(id)sender{
    
    
    RotatSlider = (UISlider *) sender;
        
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI +RotatSlider.value);
 
    
    NSLog(@"XX%fXX",RotatSlider.value);
       
    label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    Rotate = trans;
    
    [self TEXTlb];
    
    
}
-(void)SliderAction:(id)sender{
    
   // int h;
    //h = 95+[TheTextF.text length]+ thesizef;
    if ([contNO isEqualToString:@"FontName"]) {
        [label1 removeFromSuperview];
        slider = (UISlider *) sender;
        int progressAsInt =(int)(slider.value + 1.0f);
        
        NSString *newText =[[NSString alloc] initWithFormat:@"%d",progressAsInt];
        
        
        TheFontNO = progressAsInt;
        
        NSLog(@"TheFontNO : %f",TheFontNO);

        int i;

        
        i = [newText intValue];
        
        
        
        NSArray *f = [UIFont familyNames];
        
        NSString *fontName = [f objectAtIndex: i];
        
        NSLog(@"X((%@))X",fontName);

        thefont = [[NSString alloc] initWithFormat:@"%@",fontName ];
        
        [self TEXTlb];
    }  
    else if ([contNO isEqualToString:@"FontSize"]) {
        
        [TEXT removeFromSuperview];
        
    
        
        slider = (UISlider *) sender;
        int progressAsInt =(int)(slider.value + 1.0f);
        thesizef = progressAsInt;
        
        NSLog(@"Xsize (%f)XX",thesizef);
       [self TEXTlb];        
        
    }  
   
    
}

-(void)DoText{
    
    //[self TEXTlb];
    // [label1 removeFromSuperview];
    //[self.ShadowCalorView dismissSemiModalView];
    
//    UIViewController * parent = [self.view containingViewController];
//    if ([parent respondsToSelector:@selector(dismissSemiModalView)]) {
//        [parent dismissSemiModalView];
//    }
//    
   // [self dismissSemiModalView];
   // [presentSemiView self.view];
  //  [self presentSemiView:self.view];
   // [come dismissSemiModalView];
    /*h=   100+thesizef+[TheTextF.text length];
    [label1 removeFromSuperview];
    
    // */

    [UIView animateWithDuration:0.0 animations:^{
  /* label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(50, 160, self.TextView.frame.size.width, h)];
	label1.text = TheTextF.text;
    
    label1.userInteractionEnabled = NO;

     
     label1.font = [UIFont fontWithName:thefont size:thesizef];

     label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    
    [self.view addSubview:label1];
   
  // */
        
//        [[self view] addSubview:[[self colorPicker] view]];
//        [self.view addSubview:ShadowCalorView];
//        [self.view addSubview:ShadowBlurSlider];
//        [self.view addSubview:ShadowLeftRghitSlider];
//        [self.view addSubview:ShadowUpDawnSlider];
//        [self.view addSubview:bDone];
//        [self.view addSubview:Caler];
//        [self ff];
        
        //[[self colorPicker] view] removeFromSuperview];
        [[[self colorPicker] view]removeFromSuperview ];
        [ShadowCalorView removeFromSuperview];
[label1 removeFromSuperview];
        [self TEXTlb];

 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:2.5 animations:^{
     [TheTextFview removeFromSuperview];
 
 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:2.5 animations:^{
 
 }];
 }];
 }];

    [TheTextF resignFirstResponder];
  
    
    
    
}
- (NSInteger)numberOfTilesInMenu:(MGTileMenuController *)tileMenu
{
	return 10;
}


- (UIImage *)imageForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	NSArray *images = [NSArray arrayWithObjects:
					   @"AaIcon", 
					   @"FontViewIcon", 
					   @"PenIcon", 
					   @"FontCalorViewIcon", 
					   @"PhotoPickerIcon", 
					   @"SaveIcon", 
					   @"rot", 
					   @"feedIcon", 
					   @"mailIcon",
                       @"SHADOWIcon",
                       
					   nil];
	if (tileNumber >= 0 && tileNumber < images.count) {
		return [UIImage imageNamed:[images objectAtIndex:tileNumber]];
	}
	
	return [UIImage imageNamed:@"Text"];
}


- (NSString *)labelForTile:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{
	NSArray *labels = [NSArray arrayWithObjects:
					   @"Msize", 
					   @"Mfont", 
					   @"Mrghit", 
					   @"Mcalor", 
					   @"Mphoto", 
					   @"Msave", 
					   @"Mrotat", 
					   @"Mfeed", 
					   @"Mmail", 
                       @"Mshadow", 
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
                      @"Sends a tweet",
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
    } else if (tileNumber == 9) {
		return [UIImage imageNamed:@"orange_gradient"];
	} else if (tileNumber == 7) {
		return [UIImage imageNamed:@"red_gradient"];
	} else if (tileNumber == 2) {
		return [UIImage imageNamed:@"yellow_gradient"];
	} else if (tileNumber == 5) {
		return [UIImage imageNamed:@"green_gradient"];
	} else if (tileNumber == -1) {
		return [UIImage imageNamed:@"grey_gradient"];
	}
	
	return [UIImage imageNamed:@"blue_gradient"];
}


- (BOOL)isTileEnabled:(NSInteger)tileNumber inMenu:(MGTileMenuController *)tileMenu
{

    
	 [self HideAll];
	return YES;
}

#pragma mark - (For Menu)
- (void)tileMenu:(MGTileMenuController *)tileMenu didActivateTile:(NSInteger)tileNumber
{
    //[self HideAll];
	NSLog(@"Tile %d activated (%@)", tileNumber, [self labelForTile:tileNumber inMenu:tileController]);
    
    NSString *theTile = [[NSString alloc] initWithFormat:@"%@",[self labelForTile:tileNumber inMenu:tileController]];
    
    NSLog(@"XX%@XX",theTile);
    
    if ([theTile isEqualToString:@"Speech balloon"]) {
        [self ShowTextView];
    }
    if ([theTile isEqualToString:@"Magnifying glass"]) {
    
   [self performSelector:@selector(ShowPhotoPicar) withObject:nil afterDelay:0.5];
    
       /* 
        @"Msize", 
        @"Mfont", 
        @"Mrghit", 
        @"Mcalor", 
        @"Mphoto", 
        @"Msave", 
        @"Mrotat", 
        @"Mfeed", 
        @"Mmail", 
        @"Mshadow",
        */
    }
    if ([theTile isEqualToString:@"Msize"]) {
        
        [self performSelector:@selector(ShowFontSize) withObject:nil afterDelay:0.5];
        
    }
    if ([theTile isEqualToString:@"Mfont"]) {
        
        [self performSelector:@selector(ShowFontView) withObject:nil afterDelay:0.5];
         
        
    }
    if ([theTile isEqualToString:@"Mrghit"]) {
        
        [self performSelector:@selector(ShowTextView) withObject:nil afterDelay:0.5];
        
    }
    if ([theTile isEqualToString:@"Mcalor"]) {
        
        [self performSelector:@selector(ShowCalorView) withObject:nil afterDelay:0.5];
        
    }
    if ([theTile isEqualToString:@"Mphoto"]) {
        
        [self performSelector:@selector(ShowPhotoPicar) withObject:nil afterDelay:0.5];
       
    }
    if ([theTile isEqualToString:@"Msave"]) {
        
        [self performSelector:@selector(ShowSave) withObject:nil afterDelay:0.5];
        
    }
    if ([theTile isEqualToString:@"Mrotat"]) {
        
        [self performSelector:@selector(ShowRotatView) withObject:nil afterDelay:0.5];
         
        
    }
    if ([theTile isEqualToString:@"Mfeed"]) {
           
        [self performSelector:@selector(ShowfeedView) withObject:nil afterDelay:0.5];
        
    }
    if ([theTile isEqualToString:@"Mmail"]) {
        
       
          [self performSelector:@selector(ShowMail) withObject:nil afterDelay:0.5];
        
        
    }
    if ([theTile isEqualToString:@"Mshadow"]) {
        
        [self performSelector:@selector(ShowShadowView) withObject:nil afterDelay:0.5];
       // [self ShowShadowView
    }
    

}


- (void)tileMenuDidDismiss:(MGTileMenuController *)tileMenu
{
	tileController = nil;
}


#pragma mark - Gesture handling


- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
	// Ensure that only touches on our own view are sent to the gesture recognisers.
	if (touch.view == pint) {
		return YES;
	}
	
	return NO;
}


- (void)handleGesture:(UIGestureRecognizer *)gestureRecognizer
{
	// Find out where the gesture took place.
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



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}


-(void)ChackFontAndAddToAPP {
    NSLog(@"add font is no : %d",[[UIFont familyNames] count]);
    //#import <dlfcn.h>
   
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
                NSLog(@"add font is no : %d",[[UIFont familyNames] count]-3);
                NSLog(@"add font is no : %@",[UIFont familyNames] );
                
                AllFontIs = [[NSString alloc] initWithFormat:@"%d",[[UIFont familyNames] count]-3]; 
            }
        }
        
    }
    
}

#pragma mark - (ViewDidLoad)---
- (void)viewDidLoad
{ [super viewDidLoad];
    
    
  
  // al;
   // al = [[BlockAlertView alloc]initWithTitle:@"hhh" message:@"mmmm"];
   // [al addButtonWithTitle:@"" block: ]; 
   // al= add
    ////////////// Start Maher Alert ///////////////////////////////////////////////////////////////////////                                
//    //al = [[UIAlertView alloc] 
//                               initWithTitle:@" Title "
//                               message:@" The Message"
//                               delegate:self
//                               cancelButtonTitle:@"OK"
//                               otherButtonTitles:nil, nil];
//    
  //  [al show];
    ////////////// End Maher Alert /////////////////////////////////////////////////////////////////////////                                

   /*
    UIImage *tmpImage = [UIImage imageNamed:@"Al.png"];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:tmpImage];
    
    CGRect cellRectangle;
    cellRectangle = CGRectMake(0,0,tmpImage.size.width ,tmpImage.size.height );
    UIImageView *dragger = [[Draggable alloc] initWithFrame:cellRectangle];
    [dragger setImage:tmpImage];
    [dragger setUserInteractionEnabled:YES];
    
    [self.view addSubview:dragger];
   // [imageView release];
    //[tmpImage release];
*/
    
    [ShadowLabl setHidden:YES];
    [hand setHidden:YES];
	[self ChackFontAndAddToAPP];
    [self MakeGestureRedy];
    [self MakeImgPickerRedy];
    [self MakeOverlayRedy];
    [self MAkeRotatRedy];
     [self MakeTextRedy];
}
-(void)MAkeRotatRedy{
    
    CGAffineTransform trans = CGAffineTransformMakeRotation(M_PI * 1.5);
    slider.transform = trans;
}
-(void)MakeGestureRedy{
    
    UITapGestureRecognizer *doubleTapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
	doubleTapRecognizer.numberOfTapsRequired = 2;
	doubleTapRecognizer.delegate = self;
	[pint addGestureRecognizer:doubleTapRecognizer];
	
	UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleGesture:)];
	tapRecognizer.delegate = self;
	[pint addGestureRecognizer:tapRecognizer];
    
}
-(void)MakeTextRedy{
     
    if ([globalString isEqualToString:@"start"]) {
       
        
        ShadowUpDawn= 0;
        ShadowLeftRghit = 0;
        ShadowBlur = 0;
        
        
        ShadowUIcolor= [[UIColor alloc] initWithHue:0 saturation:0 brightness:0 alpha:0 ];
        Rotate = CGAffineTransformMakeRotation(M_PI +3.150000);
        [self TEXTlb];
        globalString = @"End";
    }else {
        [self TEXTlb];
    }
    
    
    
  
    
    
    
    
    
   
     
}
-(void)MakeImgPickerRedy{
    
    self.imgPicker = [[UIImagePickerController alloc] init];
    
    self.imgPicker.delegate = self;
    self.imgPicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
}
-(void)MakeOverlayRedy{
    
    overlay = [MTStatusBarOverlay sharedInstance];
    overlay.animation = MTStatusBarOverlayAnimationShrink;  // MTStatusBarOverlayAnimationShrink
    overlay.detailViewMode = MTDetailViewModeHistory;         // enable automatic history-tracking 
    overlay.progress = 0.0;
    [overlay postImmediateFinishMessage:@"التأكد من الخطوط " duration:3.0 animated:YES];
    
    overlay.progress = 0.1;
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event{
    
     [SliderRotatView raceTo:CGPointMake(0, -480) withSnapBack:NO];
    [tileController dismissMenu];
    [FeedSliderView raceTo:CGPointMake(0, -480) withSnapBack:NO];
    
//    NSLog(@"touch ended");
//    
    UITouch* touch = [touches anyObject];
//    
   CGPoint pnt = [touch locationInView:pint];
//    
   CGPoint reversePoint = CGPointMake(pnt.x, pint.frame.size.height-pnt.y);
//    
    [TEXT setCenter:reversePoint ];
    
   // PontUp = self.view.frame.size.height-pnt.x;
  //  PontLeft = self.view.frame.size.height-pnt.y;
//    
 //   CFArrayRef lines = CTFrameGetLines(self->TEXT);
    
 //   CGPoint* lineOrigins = malloc(sizeof(CGPoint)*CFArrayGetCount(lines));
    
  //  CTFrameGetLineOrigins(ctFrame, CFRangeMake(0,0), lineOrigins);
   

    [TheSlidrView raceTo:CGPointMake(-320, 0) withSnapBack:NO];
  
    
    
    /*
     
     UITouch *touch = [[event allTouches] anyObject];

     
    [TEXT setCenter:[touch locationInView:self.view]];
    
    
// hand =  [touch locationInView:self.view].x, [touch locationInView:self.view].y, self.TextView.frame.size.width, h];
    
    
  [hand setCenter:[touch locationInView:self.view]];

 
// */
 

}


#pragma mark - (Void Option)

-(void)ShowMail{
    
    
}
-(void)ShowSave{
    [overlay postImmediateFinishMessage:@"حفظ الصورة في البوم الصور" duration:3.0 animated:YES];
   // [m removeFromSuperview];
  //  [_fontLabel setHidden:YES]; 
    
	UIGraphicsBeginImageContext(UserImg.frame.size);
	[self.view.layer renderInContext:UIGraphicsGetCurrentContext()];
	UIImage *viewImage = UIGraphicsGetImageFromCurrentImageContext();
	UIGraphicsEndImageContext();
	UIImageWriteToSavedPhotosAlbum(viewImage, nil, nil, nil);
    
   // [self.view addSubview:m];
  //  [_fontLabel setHidden:NO];
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

-(void)ShowTextView{
    

    [UIView animateWithDuration:2.5 animations:^{
 [pint addSubview:TheTextFview];

     
 }completion:^(BOOL finished){
 [UIView animateWithDuration:2.5 animations:^{
 
 
 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:2.5 animations:^{
 
 }];
 }];
 }];

    
    [TheTextF becomeFirstResponder];
    
}
-(void)ShowFontView{
    contNO = @"FontName";
    int i;

    
    
    i = [AllFontIs intValue];

    
    [pint addSubview:TheSlidrView];
    [TheSlidrView setAlpha:0.0];

    
    [UIView animateWithDuration:1.0 animations:^{
        
        slider.maximumValue = i ;
        [slider setValue:1];
        [TheSlidrView raceTo:CGPointMake(-320, 0) withSnapBack:NO];
    }completion:^(BOOL finished){
        [UIView animateWithDuration:0.5 animations:^{
            
            [TheSlidrView setAlpha:1.0];
            [TheSlidrView raceTo:CGPointMake(-185, 0) withSnapBack:YES];
        }completion:^(BOOL finished){
            [UIView animateWithDuration:1.0 animations:^{
                [slider setValue:TheFontNO];
                
            }];
        }];
    }];

    
    
}
-(void)ShowFontSize{
    contNO = @"FontSize";

    
    [pint addSubview:TheSlidrView];
    [TheSlidrView setAlpha:0.0];

    
    [UIView animateWithDuration:1.0 animations:^{
        [slider setValue:1];
        [TheSlidrView raceTo:CGPointMake(-320, 0) withSnapBack:NO];
    }completion:^(BOOL finished){
        [UIView animateWithDuration:0.5 animations:^{
            
            [TheSlidrView setAlpha:1.0];
            slider.maximumValue = 44 ;
            slider.minimumValue = 5;
            [slider setValue:thesizef];
             [TheSlidrView raceTo:CGPointMake(-185, 0) withSnapBack:YES];
        }completion:^(BOOL finished){
            [UIView animateWithDuration:2.5 animations:^{
                
            }];
        }];
    }];

    
    
}

-(void)ShowSeve{
    
    
    
}
-(void)ShowSend{
    
    
    
}
-(void)ShowCalorView{
    
    ClozOpen = @"1";
    [labl setHidden:YES];
    
 [UIView animateWithDuration:0.5 animations:^{
      [pint addSubview:TheCalorView];
 [TheCalorView raceTo:CGPointMake(-320, 0) withSnapBack:NO];
 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:0.5 animations:^{
     [TheCalorView raceTo:CGPointMake(0, 0) withSnapBack:NO];
 }completion:^(BOOL finished){
     [UIView animateWithDuration:0.0 animations:^{
 
   
    
 [self setColorPicker:[[SSColorPicker alloc] initWithNibName:@"SSColorPicker" bundle:nil]];
    [[self colorPicker] setColor:[UIColor colorWithRed:.6 green:.6 blue:.6 alpha:1]];
    
    [[self colorPicker] setDelegate:self];
    
     
    [[[self colorPicker] view] setCenter:CGPointMake(-320, 180)];
     [[[self colorPicker] view] setAlpha:0.0];
 
 }completion:^(BOOL finished){
 [UIView animateWithDuration:1.5 animations:^{
         [[self view] addSubview:[[self colorPicker] view]];
     [[[self colorPicker] view] setAlpha:0.5];
 //[[[self colorPicker] view] setCenter:CGPointMake(160, 200)];
      [[[self colorPicker] view] setCenter:CGPointMake(170, 306)];
     
    // [[self colorPicker] view].userInteractionEnabled =YES ;
 }completion:^(BOOL finished){
     [UIView animateWithDuration:0.7 animations:^{
         [[[self colorPicker] view] setAlpha:1.0];
         [self ff];
 }];}];}];
 }];
 }];

}

-(void)ShowPhotoPicar{
    
    [self presentModalViewController:self.imgPicker animated:YES];
    [overlay postImmediateFinishMessage:@"اختيار صورة من البوم الصور " duration:5.0 animated:YES];

}
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)img editingInfo:(NSDictionary *)editInfo {
    UserImg.image = img;
    [[picker parentViewController] dismissModalViewControllerAnimated:YES];
    [imgPicker dismissModalViewControllerAnimated:YES];
}


-(IBAction)itsDONE:(id)sender{
    
    [self TEXTlb];
    [self HideAll];
}
-(void)HideAll{
    
  
     [SliderRotatView raceTo:CGPointMake(0, -480) withSnapBack:NO];
  [FeedSliderView raceTo:CGPointMake(0, -480) withSnapBack:NO];
   
    [ShadowCalorView raceTo:CGPointMake(-350, 0) withSnapBack:NO];
    [TheSlidrView raceTo:CGPointMake(-320, 0) withSnapBack:NO];
    [TheCalorView raceTo:CGPointMake(-320, 0) withSnapBack:NO];

    [[[self colorPicker] view]removeFromSuperview ];
    [label1 removeFromSuperview];
    //[ShadowCalorView removeFromSuperview];
}

-(void)ShowShadowView{
    
    ClozOpen = @"2";
    [TEXT removeFromSuperview];
    
    [pint addSubview:ShadowCalorView];
    [ShadowCalorView raceTo:CGPointMake(0, 0) withSnapBack:NO];
    
    [self setColorPicker:[[SSColorPicker alloc] initWithNibName:@"SSColorPicker" bundle:nil]];
    [[self colorPicker] setColor:[UIColor colorWithRed:0 green:0 blue:.0 alpha:1]];
    
    [[self colorPicker] setDelegate:self];
    
    
    
    [[[self colorPicker] view] setCenter:CGPointMake(170, 335)];
    [[self view] addSubview:[[self colorPicker] view]];
    [self ff];
    
}


-(void)ShowfeedView{
    
    [UIView animateWithDuration:0.0 animations:^{
        [pint addSubview:FeedSliderView];
        [FeedSliderView raceTo:CGPointMake(0, -480) withSnapBack:NO];
    }completion:^(BOOL finished){
        [UIView animateWithDuration:0.7 animations:^{
            
            [FeedSliderView raceTo:CGPointMake(0, 0) withSnapBack:YES];
            
            
        }];
    }];
}

-(void)ShowRotatView{
    
    
    
    [UIView animateWithDuration:0.0 animations:^{
        [pint addSubview:SliderRotatView];
        [SliderRotatView raceTo:CGPointMake(0, -480) withSnapBack:NO];
    }completion:^(BOOL finished){
        [UIView animateWithDuration:0.7 animations:^{
            
            [SliderRotatView raceTo:CGPointMake(0, 0) withSnapBack:YES];
            
            
        }];
    }]; 

}
-(IBAction)ForTest:(id)sender{
   // FeedSliderView;
    

     /////////// My animations to do animations ///////////


//////////// (((( End My Animations )))) /////////// 

    
//    [self.view addSubview:ShadowBlurSlider];
//    [self.view addSubview:ShadowLeftRghitSlider];
//    [self.view addSubview:ShadowUpDawnSlider];
//    [self.view addSubview:bDone];
//    [self.view addSubview:Caler];
  //  [self ff];



    
  /*
    
    //[self.view addSubview:ShadowCalorView];

  // */  
  
}

- (void)colorChanged:(UIColor *)color from:(id)sender
{
   
    if ([ClozOpen isEqualToString:@"1"]) {
        //[labl setTextColor:color];

 
    thecalor = color;
        [self ff];
    }else {
        ShadowUIcolor =color;
        [self ff];
    }

    
    
    
    
    
      
    
    
   
    
}


-(void)ShadowBlurSliderAction:(id)sender{
    
  
    
    ShadowBlurSlider = (UISlider *) sender;
    
    
    
    ShadowBlur = ShadowBlurSlider.value;
    NSLog(@"XX%fXX",ShadowBlur);
    
    [self ff];
    
}
-(void)ShadowUpDawnSliderAction:(id)sender{
     
 
    
   
    
    
    ShadowUpDawnSlider = (UISlider *) sender;
    
    
    
    ShadowUpDawn = ShadowUpDawnSlider.value;
    NSLog(@"XX%fXX",ShadowUpDawn);
    
    
//    ShadowLabl.shadowColor = ShadowUIcolor;
//    ShadowLabl.shadowOffset = CGSizeMake(ShadowLeftRghit,ShadowUpDawn);
//    
    [self ff];
}
-(void)ShadowLeftRghitSliderAction:(id)sender{
    
   
     
  
    ShadowLeftRghitSlider = (UISlider *) sender;
    
    
    
    ShadowLeftRghit = ShadowLeftRghitSlider.value;
    NSLog(@"XX%fXX",ShadowLeftRghit);
    
   // ShadowLabl.shadowColor = ShadowUIcolor;
  //  ShadowLabl.shadowOffset = CGSizeMake(ShadowLeftRghit,ShadowUpDawn);
   // [self TEXTlb];
    
    [self ff];
    
}


- (IBAction)showInfo:(id)sender{
    
}

- (IBAction)dismissKeyboard:(id)sender;
{
    [TheTextF resignFirstResponder];
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    
    if([text isEqualToString:@"\n"]) {
        [TheTextF resignFirstResponder];
        [self DoText];
        return NO;
    }
    
    return YES;
}
-(IBAction)ms7:(id)sender{
    
    TheTextF.text = @"";
    
}
-(void)ff{
     [TEXT removeFromSuperview];
    [label1 removeFromSuperview];
    
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(40, 50, self.ForTestView.frame.size.width-45, self.ForTestView.frame.size.height-20)];
    
    
	label1.text = TheTextF.text;
    
    //label1.text = @"اشتقتلك";
	label1.font = [UIFont fontWithName:@"Arial" size:84];
    
    label1.backgroundColor = [UIColor colorWithWhite:1 alpha:0.0];
    
    
    
    [label1 setKern:0];
    
    
    
    
    
    label1.textColor = thecalor;
    //TEXT.transform = Rotate;
    
    [label1 setAlpha:AlphaFloat];
    [self.view addSubview:label1];

}


@end
