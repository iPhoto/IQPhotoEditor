IQPhotoEditor
=============
'IQPhotoEditor' is a lightweight photo editing framework which can be integrated very easily in any project within minutes. Present `IQPhotoEditorController` with `UIViewController+IQPhotoEditor` category method to provide to the user a powerful, beautiful & user friendly photo editing interface.

Screenshot
---

[![Photo Editor](./IQPhotoEditor%20Demo/Screenshot/IQPhotoEditorScreenshot1.png)]
[![Colorize](./IQPhotoEditor%20Demo/Screenshot/IQPhotoEditorScreenshot2.png)]
[![Overlay](./IQPhotoEditor%20Demo/Screenshot/IQPhotoEditorScreenshot3.png)]


Project Setup Guide
---

##### Step 1:- Adding Photo Editor files
- In order to use IQPhotoEditor you need to add "IQPhotoEditorSDK" directory to your project. It contains a static framework `IQPhotoEditor.framework` and a resource bundle `IQPhotoEditorResources.bundle`. Copy "IQPhotoEditorSDK" to your project. Select "Create groups for any added folders". Make sure `IQPhotoEditorResources.bundle` is added in your target's "Copy Bundle Resources" and `IQPhotoEditor.framework` is added in target's "Link Binary With Libraries" under build phase.

##### Step 2:- Link against frameworks.
- In order to use IQPhotoEditor framework you may need to Link your project against these frameworks under `Project Navigator->Target->Build Phases->Link Binary With Libraries`.
    

    1) Accelerate.framework
    
    2) AVFoundation.framework
    
    3) CoreData.framework
    
    4) CoreGraphics.framework
    
    5) CoreMedia.framework
    
    6) CoreVideo.framework
    
    7) Foundation.framework
    
    8) OpenGLES.framework
    
    9) QuartzCore.framework
    
    10) UIKit.framework


##### Step 3:- Setting Linker Flag
- Add `-ObjC` linker flag in `Other Linker Flags` under `Project Navigator->Target->Build Settings->Other Linker Flags`.


Usage
---
##### Step1:- Import following header in your project

```
#import <IQPhotoEditor/IQPhotoEditor.h>
```


##### Step2:- Launch Photo Editor
- Present IQPhotoEditorController using any one of the following code snippet.

```
- (void)openPhotoEditorWithImage:(UIImage *)image
{
  IQPhotoEditorController *controller = [[IQPhotoEditorController alloc] initWithImage:image];
    
  [self presentPhotoEditor:controller presentationStyle:IQPhotoEditorPresentationStyleDefault withCompletion:^(UIImage *image, BOOL isModified) {
    // Handle other operation with received image with 'image' parameter. You can also check `isModified` boolean to check whether the received image is edited or original depending on cancel/done button pres event.
  }];
}
```

- If you want to edit an image which belongs to an ImageView, then you can present photo editor like this:-

```
- (IBAction)openPhotoEditorFromImageView:(UIButton *)sender
{
    [self presentPhotoEditorForImageView:imageView];
}
```


Compatibility
---
- Minimum OS:- iOS 5.0+.
- Device Family:- iPhone, iPad, iPod Touch.
- IDE:- Xcode 5.0.

Notes
---
- We do not recommend & do not support Adding/Modifying/Deleting any contents of `IQPhotoEditorResources.bundle` & `IQPhotoEditor.framework` binary & header files.

Author
---
- If you wish to contact me, email at: hack.iftekhar@gmail.com
