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
    
   //  [self buttonsProgramatically];
    
  //   [self imageButton];
   
}





#pragma mark Buttons programsal

-(void)buttonsProgramatically
{
    // Kare seklinde duz , uzerinde Round Rect.. yazan button
    UIButton *roundRectButton = [UIButton buttonWithType:
                                 UIButtonTypeRoundedRect]; // button tipi tanimlama
    [roundRectButton setFrame:CGRectMake(60, 80, 200, 40)]; // buttonun yerini (x,y kordinatlari) ve olculerini (w,h) seklinde belirleme . CGRectMake(x,y,w,h)
    [roundRectButton setTitle:@"Round Rect.." forState:
     UIControlStateNormal]; // buttonun uzerinde yazan yaziyi belirleme .
    [roundRectButton addTarget:self action:@selector(btnCallback) forControlEvents:UIControlEventTouchUpInside]; // butona basilinca hangi fonksiyon cagirilacak
    [self.view addSubview:roundRectButton]; // Buttonu ana view icerisine ekleme . self.view  ViewControllerin tum ekrani.
    
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


-(void)imageButton
{
    UIImage *image=[UIImage imageNamed:@"tree.png"]; // button resmi
    UIButton *imageBtn=[UIButton buttonWithType:UIButtonTypeCustom]; // buttonu olusturma
    
    // butonumuza resim atiyoruz
    [imageBtn setImage:image forState:UIControlStateNormal];
   // [imageBtn setImage:image forState:UIControlStateHighlighted];
    
    // buton icin uygun kordinat ve olculeri veriyoruz
    imageBtn.frame=CGRectMake(0, 0, image.size.width/3.5, image.size.height/3.5);
    imageBtn.center=self.view.center;
    
    // buttona basilinca cagirilacak fonksiyon
    [imageBtn addTarget:self action:@selector(btnCallback) forControlEvents:UIControlEventTouchUpInside];
    
    // butonumuzu sayfa icerisine ekliyoruz
    [self.view addSubview:imageBtn];
    
}

#pragma mark button a basildiginda cagirilan

//butona basildiginda bu fonksiyon cagirilsin istiyoruz
-(void)btnCallback
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Selam" message:@"Merhaba Dunyali.." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}



#pragma mark InterfaceBuilder 


-(IBAction)btnOnTap:(id)sender
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"Selam" message:@"Akıllı yazılıma hoşgeldiniz" delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
