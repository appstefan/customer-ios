//
//  KUSPermissions.m
//  Kustomer
//
//  Created by Daniel Amitay on 11/11/17.
//  Copyright © 2017 Kustomer. All rights reserved.
//

#import "KUSPermissions.h"

#import <UIKit/UIKit.h>

@implementation KUSPermissions

+ (BOOL)cameraIsAvailable
{
    return ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"NSCameraUsageDescription"]
            && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]);
}

+ (BOOL)photoLibraryIsAvailable
{
    return ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"NSPhotoLibraryUsageDescription"]
            && [UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypePhotoLibrary]);
}

@end
