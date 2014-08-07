//
//  UIViewController+IQPhotoEditor.h
//  IQPhotoEditorSDK
//  https://github.com/IQPhotoEditor/IQPhotoEditor
//
//  Copyright (c) 2014 Iftekhar. All rights reserved.
//

#import <UIKit/UIViewController.h>
#import "IQPhotoEditorConstants.h"

@class IQPhotoEditorController;

@interface UIViewController (IQPhotoEditor)

/*!
    @method presentPhotoEditor:presentationStyle:withCompletion:
 
    @abstract Present given photo editor controller with presentation animation style. You should provide a completion block to receive edited image.
 */
-(void)presentPhotoEditor:(IQPhotoEditorController*)photoEditor presentationStyle:(IQPhotoEditorPresentationStyle)presentationStyle withCompletion:(IQPhotoEditorCompletion)completion;

/*!
    @method presentNewPhotoEditorForImageView:
 
    @abstract Present new instance of photo editor controller from given imageView frame with animation. getting and setting of image from UIImageView is managed automatically for you. This method does not retain imageView object.
 
    @exception Throws NSInvalidArgumentException, if provided imageView's image property is nil or can't be edited through PhotoEditor.

    @discussion You must not pass imageView without any image set to it.
 */
-(IQPhotoEditorController*)presentPhotoEditorForImageView:(UIImageView*)imageView;

@end