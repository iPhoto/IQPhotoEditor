//
//  IQPhotoEditorController.h
//  IQPhotoEditorSDK
//  https://github.com/IQPhotoEditor/IQPhotoEditor
//
//  Copyright (c) 2014 Iftekhar. All rights reserved.
//

#import <UIKit/UIViewController.h>
#import "IQPhotoEditorConstants.h"

/*!
    @author Mohd Iftekhar Qurashi

    @class IQPhotoEditorController
 
    @abstract 'IQPhotoEditor' is a lightweight photo editing library which can be integrated very easily in any project within minutes. Present this ViewController with UIViewController+IQPhotoEditor category method to provide to the user a powerful, beautiful & user friendly photo editing interface.
 
    @related hack.iftekhar@gmail.com
 */
@interface IQPhotoEditorController : UIViewController


/*!
    @property image
 
    @abstract Original Image provided by 'initWithImage:' method.
 */
@property (nonatomic, strong, readonly) UIImage *image;


/*!
    @property completionBlock
 
    @abstract completionBlock to receive edited image.
 
    @discussion If you are using native model presentation method 'presentViewController:animated:completion:' then you should set completionBlock property to receive edited image. If you use UIViewController+IQPhotoEditor category method then you should provide completionBlock in category method to receive edited image.
 */
@property (nonatomic, assign) IQPhotoEditorCompletion completionBlock;


/*!
    @method initWithImage:
 
    @abstract Initialize Photo Editor Controller with provided image.
 
    @exception Throws NSInvalidArgumentException, if provided image is nil or can't be edited through PhotoEditor
 */
- (id)initWithImage:(UIImage *)image;


/*!
    @method canEditImage:
 
    @abstract Check whether a given image can be edited through Photo Editor.
 
    @return Method return YES if provided image can be edited through Photo Editor, return NO if provided image is nil or image size is zero or didn't pass photo editor requirement.
 */
+(BOOL)canEditImage:(UIImage*)image;



//@final. Must not be used for subclassing.
/*!
    @method init
 
    @abstract You must not create Photo Editor objects using 'init'. User 'initWithImage:' method.
 */
- (id)init	__attribute__((unavailable("init is not available in IQPhotoEditorController, Use initWithImage:")));

/*!
    @method new
 
    @abstract You must not create Photo Editor objects using 'new'. User 'initWithImage:' method.
 */
+ (id)new	__attribute__((unavailable("new is not available in IQPhotoEditorController, Use initWithImage:")));

/*!
    @method initWithCoder:
 
    @abstract You must not create Photo Editor objects using 'initWithCoder:'. User 'initWithImage:' method.
 */
- (id)initWithCoder:(NSCoder *)aDecoder	__attribute__((unavailable("initWithCoder: is not available in IQPhotoEditorController, Use initWithImage:")));

/*!
    @method new
 
    @abstract You must not create Photo Editor objects using 'initWithNibName:bundle:'. User 'initWithImage:' method.
 */
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil	__attribute__((unavailable("initWithNibName:bundle: is not available in IQPhotoEditorController, Use initWithImage:")));


@end
