//
//  AMCropperView.h
//  Pods
//
//  Created by Bryn Bodayle on April/17/2015.
//
//

#import <UIKit/UIKit.h>

@interface AMCropperView : UIView

@property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, strong) UIImage *image;
@property (readonly, nonatomic, strong) UIImageView *imageView;
@property (readonly, nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, strong) UIBezierPath *cropMaskPath;
@property (nonatomic, strong) UIView *cropMaskView;
@property (nonatomic, readonly) UIView *borderView;
@property (nonatomic, assign) CGFloat cropDisplayScale; //defaults to 1.0f
@property (nonatomic, assign) UIOffset cropDisplayOffset; //defaults to UIOffsetZero
@property (nonatomic, assign) BOOL cropsImageToCircle; // defaults to NO
@property (nonatomic, assign) BOOL leavesUnfilledRegionsTransparent; // defaults to NO
@property (nonatomic, assign) BOOL allowsNegativeSpaceInCroppedImage; //defaults to NO

- (void)renderCroppedImage:(void (^)(UIImage *croppedImage, CGRect cropRect))completionBlock;

@end



#pragma mark - Crop Controller
@protocol AMCropViewDelegate <NSObject>

- (void)imageCropperdidFinished:(UIImage *)editedImage;
- (void)imageCropperDidCancel;

@end

@interface AMCropView : UIViewController
@property (nonatomic, assign) id<AMCropViewDelegate> delegate;
- (id)initWithImage:(UIImage *)originalImage cropFrame:(CGRect)cropFrame;

@end
