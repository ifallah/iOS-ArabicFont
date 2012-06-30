//
//  SSMainViewController.m
//  ColorPicker
//
//  Created by David Douglas on 4/26/12.
//  Copyright (c) 2012 Software Smoothie. All rights reserved.
//

#import "SSMainViewController.h"

@interface SSMainViewController ()

@end

@implementation SSMainViewController
@synthesize colorPicker;
@synthesize labl;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self setColorPicker:[[SSColorPicker alloc] initWithNibName:@"SSColorPicker" bundle:nil]];
    [[self colorPicker] setColor:[UIColor colorWithRed:.6 green:.6 blue:.6 alpha:1]];

    [[self colorPicker] setDelegate:self];
    [[self view] addSubview:[[self colorPicker] view]];
    [[[self colorPicker] view] setCenter:CGPointMake(160, 200)];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

#pragma mark - Flipside View

- (void)flipsideViewControllerDidFinish:(SSFlipsideViewController *)controller
{
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)showInfo:(id)sender
{    
    SSFlipsideViewController *controller = [[SSFlipsideViewController alloc] initWithNibName:@"SSFlipsideViewController" bundle:nil];
    controller.delegate = self;
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentModalViewController:controller animated:YES];
}

- (void)colorChanged:(UIColor *)color from:(id)sender
{
    [label1 removeFromSuperview];
   // [[self view] setBackgroundColor:color];
    [labl setTextColor:color];
    NSLog(@"XX%@XX",color);
    
    
    label1 = [[NMCustomLabel alloc] initWithFrame:CGRectMake(30, 15, self.view.frame.size.width-60, 50)];
	label1.text = @"السلام عليكم ورحمة الله وبركاته Hello iFallaH";
	//label1.font = [UIFont fontWithName:@"khalaad Hadeel" size:28];
	//label1.fontBold = [UIFont fontWithName:@"PT Bold Broken" size:16];
	//label1.fontItalic = [UIFont fontWithName:@"khalaad Hadeel" size:16];
	//label1.kern = -0.1;
	label1.textColor = color;
	//label1.textColorBold = [UIColor colorWithRed:53/255.0 green:53/255.0 blue:53/255.0 alpha:1.0];
	label1.lineHeight = 28;
	[self.view addSubview:label1];


}
@end
