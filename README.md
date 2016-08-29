# MXProgressHUD-in-Objective-C

`MXProgressHUD` is a subclass of MBProgressHUD.

## Installation with CocoaPods

```
pod 'MXProgressHUD'
```

## Usage

```objective-c
#import "MXProgressHUD.h"
```

```objective-c
[MXProgressHUD showLoading:@"Loading" duration:4];
[MXProgressHUD showSuccess:@"Success"];
[MXProgressHUD showError:@"Error"];
[MXProgressHUD showText:@"Some Text"];
[MXProgressHUD showText:@"Some Text" duration:4];
[MXProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeLoading duration:4 customIcon:nil view:nil];
[MXProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeSuccess duration:4 customIcon:nil view:nil];
[MXProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeError duration:4 customIcon:nil view:nil];
[MXProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeText duration:4 customIcon:nil view:nil];
[MXProgressHUD showHUD:@"This is a HUD" type:MBProgressHUDTypeCustomIcon duration:4 customIcon:[UIImage imageNamed:@"img" ] view:nil];
```

```objective-c
MXProgressHUD *hud = [MXProgressHUD makeLoading:@"A Loading HUD" toView:nil];
[hud showAnimated:YES];
//[hud hideAnimated:YES];
```

```objective-c
[MXProgressHUD showLoading:@"Loading" duration:4];
```

And More..
