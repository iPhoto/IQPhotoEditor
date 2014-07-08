//
//  IQPhotoEditorConstants.h
//  IQPhotoEditorSDK
//  https://github.com/IQPhotoEditor/IQPhotoEditor
//
//  Copyright (c) 2014 Iftekhar. All rights reserved.
//



/*!
    @typedef IQPhotoEditorCompletion
 
    @abstract The callback handler for a Photo Editor.
 
    @param image The image returned by the photo editor.
 
    @param isModified The boolean value returned by the Photo Editor to check whether the returned image by the photo editor is modiefied or not. Image may be modified or original depending on cancel/done button press event.
 */
typedef void(^IQPhotoEditorCompletion)(UIImage* image, BOOL isModified);


/*!
    @enum IQPhotoEditorPresentationStyle
 
    @abstract Animation style when presenting Photo Editor Controller.
 
    @constant IQPhotoEditorPresentationStyleDefault Present Photo Editor Controller modally with default animation.
 
    @discussion We Will add more presentation style in near future.
 */
typedef enum IQPhotoEditorPresentationStyle
{
    IQPhotoEditorPresentationStyleDefault,
}IQPhotoEditorPresentationStyle;

