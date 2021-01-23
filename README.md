# UITextFieldIcons

## Summary
This extension provides the ability to easily add action leading and trailing icons to a UITextField. Each icon can be assigned a color and an action that executes when the icon is tapped.

To learn more about this project, please visit it on 
[GitHub](https://github.com/DarthXoc/UITextFieldIcons).

## Demo
Give UITextFieldIcons a try without having to type a single line of code with the [UITextFieldIcons Demo](https://github.com/DarthXoc/UITextFieldIcons-Demo).

## Installation
Simply add UITextFieldIcons via Swift Package Manager to your project... that's it!

## Usage 
You can choose to create a _UITextFieldIcons_ control in the same way that you would create a stock _UITextField_ control, either via Storyboards, programmatically or through a mixture of the two.

### Via Storyboards
1) Select the UITextField that you wish to use
2) Switch to the Identity Inspector
3) Update the UITextField's class to 'UITextFieldIcons'
4) Switch to the Attributes Inspector
5) You can find the configuration options under the _Text Field Icons_ heading

### Via Code
Import `UITextFieldIcons`. Then create a _UITextFieldIcons_ control in the same way that you would create a _UITextField_ control, except that instead of using _UITextField_, use the _UITextFieldIcons_ type. Because _UITextFieldIcons_ in an extension of _UITextField_, all of _UITextField_'s functions will be inherited.

## Executing Code On Tap
When a user taps on a leading or trailing icon, two ways are provided to have custom code executed.

### Closures
The first execution method is via a standard closure. These can be created on `leadingTapAction` and `trailingTapAction` like so:
```
textField.leadingTapAction = {
    print("Closure: You have tapped on the leading icon");
}

textField.trailingTapAction = {
    print("Closure: You have tapped on the trailing icon");
}
```

### Delegate Methods
The second way is via a delegate method:
1) Add the `UITextFieldDelegate` delegate 
2) Add the `UITextFieldIconsDelegate` delegate
3) Implment the `UITextFieldIconsLeadingIcon_Tap(sender: UITextFieldIcons)` or `UITextFieldIconsTrailingIcon_Tap(sender: UITextFieldIcons)` methods
```
class ViewController: UIViewController, UITextFieldDelegate, UITextFieldIconsDelegate {
    // MARK: - Delegates
    
    internal func UITextFieldIconsLeadingIcon_Tap(sender: UITextFieldIcons) {
        print("Delegate Method: You have tapped on the leading icon");
    }
    
    internal func UITextFieldIconsTrailingIcon_Tap(sender: UITextFieldIcons) {
        print("Delegate Method: You have tapped on the trailing icon");
    }
}
```

## Reference

| Attribute | Type | Default | Description |
| --- | --- | --- | --- |
| iconSpacingLeft | CGFloat | 8 | The spacing that appears to the left of the icon |
| iconSpacingRight | CGFloat | 8 | The spacing that appears to the right of the icon |
| leadingColor | UIColor | .placeholderText | The color of the leading icon |
| leadingIcon | UIImage | nil | The leading icon (as a UIImage) |
| leadingTapAction | Closure | nil | The action that occurs when the leading icon is tapped |
| trailingColor | UIColor | .placeholderText | The color of the trailing icon |
| trailingIcon | UIImage | nil | The trailing icon (as a UIImage) |
| trailingTapAction | Closure | nil | The action that occurs when the trailing icon is tapped |

## Known Issues
* Currently you need to implment `UITextFieldDelegate` alongside `UITextFieldIconsDelegate` in your view controller
