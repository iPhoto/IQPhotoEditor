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
    IBOutlet UIImageView *imageView;
}

#pragma mark - IQPhotoEditor
- (IBAction)openPhotoEditorFromImageView:(UIButton *)sender
{
    [self presentPhotoEditorForImageView:imageView];
}

- (IBAction)openPhotoEditorAction:(UIButton *)sender
{
    IQPhotoEditorController *controller = [[IQPhotoEditorController alloc] initWithImage:imageView.image];
    [self presentPhotoEditor:controller presentationStyle:IQPhotoEditorPresentationStyleDefault withCompletion:^(UIImage *image, BOOL isModified) {
        imageView.image = image;
    }];
}

#pragma mark - Save Action
- (IBAction)saveAction:(UIBarButtonItem *)barButton
{
    if (imageView.image)
    {
        UIImageWriteToSavedPhotosAlbum(imageView.image, self, @selector(image:didFinishSavingWithError:contextInfo:), NULL);
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
    if (gesture.state == UIGestureRecognizerStateEnded)
    {
        UIImagePickerController *controller = [[UIImagePickerController alloc] init];
        controller.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
        controller.delegate = self;
        [self presentViewController:controller animated:YES completion:nil];
    }
}

-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    imageView.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

-(void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
