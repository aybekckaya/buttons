//
//  ViewController.m
//  UIButtonsTut
//
//  Created by aybek can kaya on 11/29/13.
//  Copyright (c) 2013 aybek can kaya. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self buttonsProgramatically];
}


#pragma mark Buttons Programatically

-(void)buttonsProgramatically
{
    // Kare seklinde duz , uzerinde Round Rect.. yazan button
    UIButton *roundRectButton = [UIButton buttonWithType:
                                 UIButtonTypeRoundedRect];
    [roundRectButton setFrame:CGRectMake(60, 80, 200, 40)];
    [roundRectButton setTitle:@"Round Rect.." forState:
     UIControlStateNormal];
    [self.view addSubview:roundRectButton];
    
    // yuvarlak icinde i harfi olan button
    UIButton *detailDisclosureButton = [UIButton buttonWithType:
                                        UIButtonTypeDetailDisclosure];
    [detailDisclosureButton setFrame:CGRectMake(60, 150, 200, 40)];
    [detailDisclosureButton setTitle:@"Detail disclosure" forState:
     UIControlStateNormal];
    [self.view addSubview:detailDisclosureButton];
    
    // + buttonu 
    UIButton *contactButton = [UIButton buttonWithType:
                               UIButtonTypeContactAdd];
    [contactButton setFrame:CGRectMake(60, 200, 200, 40)];
    [self.view addSubview:contactButton];
    
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
