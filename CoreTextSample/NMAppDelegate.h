//
//  NMAppDelegate.h
//  CoreTextSample
//
//  Created by Robert Haining on 3/21/12.
//  Copyright (c) 2012 News.me. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NMAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
-(void)customizeiPadTheme;

-(void)customizeiPhoneTheme;

-(void)iPadInit;

-(void)configureiPhoneTabBar;

-(void)configureTabBarItemWithImageName:(NSString*)imageName andText:(NSString *)itemText forViewController:(UIViewController *)viewController;

@end
