# XCUITest Framework Readme

## Overview

XCUITest is a testing framework provided by Apple for iOS applications. It allows developers to write tests for user interfaces and ensures the app functions correctly. This readme will guide you through the setup, configuration, and execution of XCUITest for your project, including steps for signing, configuring capabilities, setting up schemes, running tests, and reviewing results.

## Prerequisites

- Xcode installed (latest version recommended)
- A valid Apple Developer account for signing

## Setup Instructions

### 1. Project Configuration

#### Signing & Capabilities

1. **Open Xcode** and navigate to your project.
2. Select **critterclan** in the Project Navigator.
3. Under the **"Signing & Capabilities"** tab, ensure that the **"Automatically manage signing"** option is enabled.
4. Choose **Team** from the dropdown. This will automatically configure the necessary signing certificates and provisioning profiles.

#### Scheme Configuration

**Check scheme** for UI tests:
    - In Xcode, go to the **Scheme Editor** by clicking on the scheme selector at the top of the Xcode window and choosing **"Edit Scheme..."**.
    - Check that **"CritterClanTests"** set as default.
    - Build configuration set at **Debug**

### 3. Running Tests

- Select your UI test scheme from the scheme selector.
- Press **Cmd + U** or go to **Product > Test** to run your tests.
- Select needed test in the Project Navigator. Click **Play** button near needed test or test class
- Go to the **Test Plan Navigator** (Cmd + 6). Click **Play** button near needed test or test class

### 4. Checking Test Results

#### Test Reports

- After running your tests, Xcode will provide a detailed report of the test results.
- You can view the results in the **Report Navigator** (Cmd + 9), which shows the outcome of each test case, including passed, failed, and skipped tests.

#### Video Review

1. **Enable Recording**:
    - Navigate to **Edit Scheme** > **Run** > **Options** and ensure **"Enable backtrace recording"** is checked. This will allow Xcode to record a video of the test run.
    - Select **CritterClanTests** test plan in the Project Navigator. Click **Configurations** tab in **Shared Settings**. **Automatic Screen Capture** and **Attachments** values are set to **"On, and delete if test succeeds"** by default.
    - To store all videos and other attachments value can be switched to **"On, and keep all"**.
    - To disable attachments switch value to **"Off"**
2. **Accessing Videos**:
    - Once the tests have run, you can access the recorded videos from the **Report Navigator** (Cmd + 9).
    - Click on a test case, and if a video is available, a playback option will be visible.

## Additional Resources

- [Apple's XCTest Documentation](https://developer.apple.com/documentation/xctest)
- [XCUITest Tutorial](https://developer.apple.com/documentation/xctest/user_interface_tests)

## Troubleshooting

- **Tests Not Running**: Ensure your test target is correctly set up and that your app is launching properly.
- **Signing Issues**: Verify that your certificates and provisioning profiles are correctly set up in the Apple Developer portal and that Xcode is using the correct team.

For further assistance, consult the Xcode documentation or seek help from the developer community.

# Happy testing!
