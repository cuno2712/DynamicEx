//
//  ViewController.m
//  dynamicex
//
//  Created by Tan on 7/5/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *text;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIImageView *imageview;

@end


@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)onClickButton:(id)sender {
    if(self.text.text.length != 0)
    {
        Class class = NSClassFromString([self.text.text lowercaseString]);
        if (class == nil) {
            self.imageview.image = [UIImage imageNamed:@"404Error-2.png"];
            
        }
        else{
            id object = [class new];
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wundeclared-selector"
            SEL sayMethod = @selector(getImageName);
#pragma clang diagnostic pop
            
            if ([object respondsToSelector:sayMethod]) {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
              self.imageview.image = [UIImage imageNamed:  [object performSelector:sayMethod]];
#pragma clang diagnostic pop
            
        }
        }

    
     
//        self.imageview.visible
    
}
 
}
@end



