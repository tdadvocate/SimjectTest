%hook SpringBoard

- (void)applicationDidFinishLaunching:(id)application {
  %orig;
  UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Simject Loaded" message:@"Simject has been loaded successfully!" preferredStyle:UIAlertControllerStyleAlert];
  UIAlertAction *action = [UIAlertAction actionWithTitle:@"Acknowledged!" style:UIAlertActionStyleDefault handler:nil];
  [alert addAction:action];
  [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}

%end
