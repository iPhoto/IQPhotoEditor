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

@end