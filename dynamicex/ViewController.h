//
//  ViewController.h
//  dynamicex
//
//  Created by Tan on 7/5/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@end


@interface cat : NSObject

@end

@implementation cat
- (NSString*) getImageName
{
    NSString *name =  [NSString stringWithFormat:@"cat.png"];
    return name;
}
@end


@interface dog : NSObject
@end

@implementation dog
- (NSString*) getImageName
{
    NSString *name =  [NSString stringWithFormat:@"dog.png"];
    return name;
}
@end
@interface elephant : NSObject
@end

@implementation elephant
- (NSString*) getImageName
{
    NSString *name =  [NSString stringWithFormat:@"elephant.png"];
    return name;
}
@end
@interface mouse : NSObject
@end

@implementation mouse
- (NSString*) getImageName
{
    NSString *name =  [NSString stringWithFormat:@"mouse.png"];
    return name;
}
@end

@interface tiger : NSObject
@end

@implementation tiger
- (NSString*) getImageName
{
    NSString *name =  [NSString stringWithFormat:@"tiger.png"];
    return name;
}
@end



