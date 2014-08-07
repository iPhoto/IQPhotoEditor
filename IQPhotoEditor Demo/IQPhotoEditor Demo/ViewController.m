//
//  ViewController.m
//  IQPhotoEditor Demo
//
//  Copyright (c) 2014 Iftekhar. All rights reserved.
//

#import "ViewController.h"
#import <IQPhotoEditor/IQPhotoEditor.h>

@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@end

@implementation ViewController
{
    IBOutlet UIImageView *imageView1;
    IBOutlet UIImageView *imageView2;
    IBOutlet UIImageView *imageView3;
    
    UIImageView *selectedImageView;
}

- (IBAction)openPhotoEditorAction:(UIButton *)sender
{
    IQPhotoEditorController *controller = [[IQPhotoEditorController alloc] initWithImage:imageView1.image];
    [self presentPhotoEditor:controller presentationStyle:IQPhotoEditorPresentationStyleDefault withCompletion:^(UIImage *image, BOOL isModified) {
        imageView1.image = image;
    }];
}

#pragma mark - Save Action
- (IBAction)saveAction:(UIBarButtonItem *)barButton
{
    if (imageView1.image)
    {
        UIImageWriteToSavedPhotosAlbum(imageView1.image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
    }
}

- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo
{
    if (error)
    {
        [[[UIAlertView alloc] initWithTitle:@"Error!" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
    else
    {
        [[[UIAlertView alloc] initWithTitle:@"Success!" message:@"Photo saved to Photo Album" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil] show];
    }
}

#pragma mark - Open Photo Library
- (IBAction)tapAction:(UITapGestureRecognizer *)gesture
{
    UIImageView *imageView = (UIImageView*)gesture.view;
    
    [self presentPhotoEditorForImageView:imageView];
}

- (IBAction)longPressAction:(UILongPressGestureRecognizer *)gesture
{
    if (gesture.state == UIGestureRecognizerStateBegan)
    {
        selectedImageView = (UIImageView*)gesture.view;

        UIImagePickerController *controller = [[UIImagePickerController alloc] init];
        controller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        controller.delegate = self;
        [self presentViewController:controller animated:YES completion:nil];
    }
}


-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    selectedImageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:^{
        selectedImageView = nil;
    }];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:^{
        selectedImageView = nil;
    }];
}

@end
