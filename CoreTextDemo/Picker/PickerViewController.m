//
//  PickerViewController.m
//  Test
//
//  Created by gangyi1 on 2021/11/12.
//

#import "PickerViewController.h"

@interface PickerViewController ()<UIPickerViewDelegate,UIPickerViewDataSource>

@property (nonatomic,strong) UIPickerView *pickerView;

@end

@implementation PickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _pickerView = [[UIPickerView alloc] initWithFrame:CGRectMake(0, 44, self.view.bounds.size.width, 267)];
    [_pickerView setShowsSelectionIndicator:YES];
    _pickerView.userInteractionEnabled = YES;
    [_pickerView setBackgroundColor:[UIColor whiteColor]];
    _pickerView.dataSource = self;
    _pickerView.delegate = self;
    [self.view addSubview:_pickerView];
    [_pickerView reloadAllComponents];
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 20;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component
{
    return 40;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component == 0) {
        return 100;
    }
    return 200;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
{
    CGSize rowSize = [pickerView rowSizeForComponent:component];
    UILabel *lab = [[UILabel alloc] init];
    lab.frame = CGRectMake(0, 0, rowSize.width, rowSize.height);
    lab.text = [NSString stringWithFormat:@"%ld", row];
    lab.textAlignment = NSTextAlignmentCenter;
    if (component == 0) {
//        lab.textAlignment = NSTextAlignmentRight;
        lab.backgroundColor = [UIColor redColor];
    } else {
//        lab.textAlignment = NSTextAlignmentLeft;
        lab.backgroundColor = [UIColor greenColor];
    }
    _pickerView.subviews[1].backgroundColor = [UIColor whiteColor];
    for(UIView *speartorView in _pickerView.subviews)
    {
        if (speartorView.frame.size.height < 1)
        {
            speartorView.backgroundColor = [UIColor greenColor];
        }
    }
    
    return lab;
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
