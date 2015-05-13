//
//  MyCustomView.m
//  CustomViewWithIB
//
//  Created by Teerapap Changwichukarn on 13/5/15.
//
//

#import "MyCustomView.h"

@implementation MyCustomView

// Called when it is initialized programatically.
-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self)
    {
        [self loadFromNib];
    }
    return self;
}

// Called when it is initialized by storyboard or IB
- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self loadFromNib];
    }
    return self;
}

-(void)loadFromNib {
#if !TARGET_INTERFACE_BUILDER
    NSBundle *bundle = [NSBundle mainBundle];
#else
    NSBundle *bundle = [NSBundle bundleForClass:[self class]];
#endif
    
    UIView *v =[[bundle loadNibNamed:@"MyCustomView" owner:self options:nil] firstObject];
    v.frame = self.bounds;
    [self addSubview:v];
}

- (NSString *)labelText {
    return self.label.text;
}

- (void)setLabelText:(NSString *)labelText {
    self.label.text = labelText;
}

- (UIImage *)image {
    return self.imageView.image;
}

- (void)setImage:(UIImage *)image {
    self.imageView.image = image;
}

@end
