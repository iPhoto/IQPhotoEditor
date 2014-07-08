//
//  ViewController.m
//  IQPhotoEditor Demo
//
//  Copyright (c) 2014 Iftekhar. All rights reserved.
//

#import "ViewController.h"
#import <IQPhotoEditor/IQPhotoEditor.h>

@implementation ViewController
{
    IBOutlet UIImageView *imageView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
 	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)openAction:(UIButton *)sender
{
    IQPhotoEditorController *controller = [[IQPhotoEditorController alloc] initWithImage:imageView.image];
    
    [self presentPhotoEditor:controller presentationStyle:IQPhotoEditorPresentationStyleDefault withCompletion:^(UIImage *image, BOOL isModified) {
        [imageView setImage:image];
    }];
}

@end
