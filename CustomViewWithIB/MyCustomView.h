//
//  MyCustomView.h
//  CustomViewWithIB
//
//  Created by Teerapap Changwichukarn on 13/5/15.
//
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface MyCustomView : UIView

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *label;

@property (strong, nonatomic) IBInspectable UIImage *image;
@property (strong, nonatomic) IBInspectable NSString *labelText;

@end
