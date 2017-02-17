//
//  ViewController.m
//  AMCropView
//
//  Created by Ali Mashuri on 2/17/17.
//  Copyright © 2017 Ali Mashuri. All rights reserved.
//

#import "ViewController.h"
@import AMCropView;


@interface ViewController ()<UIImagePickerControllerDelegate,UINavigationControllerDelegate, AMCropViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *img;


@end

@implementation ViewController
@synthesize img;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (IBAction)buka:(id)sender {
    UIImagePickerController *imagePickerController = [[UIImagePickerController alloc] init];
    imagePickerController.delegate = self;
    imagePickerController.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    [self presentViewController:imagePickerController animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIImagePickerControllerDelegate

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    UIImage *image = info[UIImagePickerControllerOriginalImage];
    [picker dismissViewControllerAnimated:NO completion:^{
        CGFloat margin = 20;
        AMCropView *crop = [[AMCropView alloc] initWithImage:image cropFrame:CGRectMake(margin, margin, CGRectGetWidth(self.view.bounds)-margin, CGRectGetWidth(self.view.bounds)-margin)];
        crop.delegate = self;
        [self presentViewController:crop animated:NO completion:nil];
    }];
}

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:nil];
}

- (void)imageCropperDidCancel {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)imageCropperdidFinished:(UIImage *)editedImage {
    [self dismissViewControllerAnimated:YES completion:nil];
    img.image = editedImage;
    NSLog(@"image %@", editedImage);
}

@end
