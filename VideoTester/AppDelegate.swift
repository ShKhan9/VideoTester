//
//  AppDelegate.swift
//  VideoTester
//
//  Created by Mac on 4/7/19.
//  Copyright © 2019 Mac. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

//3lacam


/*
 
 stages:
 - build
 - Code Check
 - Testing
 - Pre Release
 - Deployment
 
 
 build_project:
 stage: build
 tags:
 - Ios_Shell
 script:
 - xcodebuild clean -workspace 3lacam.xcworkspace -scheme 3lacam
 
 
 
 build_project:
 stage: build
 tags:
 - Ios_Shell
 script:
 - xcodebuild  -workspace 3lacam.xcworkspace -scheme 3lacam  -destination 'platform=iOS Simulator,name=iPhone 8 Plus,OS=11.0'  # BUILD_OUTPUT=plist-html BUILD_OUTPUT_DIR=.../buildReport
 
 
 
 
 
 static_code_analyze:
 tags:
 - Ios_Shell
 stage: Code Check
 script:
 #this replace findBugs for static code analyze
 - xcodebuild analyze -workspace 3lacam.xcworkspace -scheme 3lacam -destination 'platform=iOS Simulator,name=iPhone 8 Plus,OS=11.0' --use-checker-build=~/mycrazyclangbuild/bin/clang CLANG_ANALYZER_OTHER_FLAGS= CLANG_ANALYZER_OUTPUT=plist-html CLANG_ANALYZER_OUTPUT_DIR=.../staticAnalyze
 
 only:
 - dev
 except:
 - tags
 artifacts:
 paths:
 - .../staticAnalyze
 allow_failure: true
 
 
 
 swift_lint:
 tags:
 - Ios_Shell
 stage: Code Check
 script:
 #- it run ok you need only to uncomment
 - swiftlint  > lintReport.html
 
 only:
 - dev
 except:
 - tags
 artifacts:
 paths:
 - lintReport.html
 allow_failure: true
 
 
 
 
 
 
 Copy_paste_PMD:
 tags:
 - Ios_Shell
 stage: Code Check
 script:
 # Running CPD
 - Pmd cpd --files  3lacam.xcworkspace --minimum-tokens 50 --language swift --encoding UTF-8 --format net.sourceforge.pmd.cpd.XMLRenderer> cpd-output.xml --failOnViolation true
 # Running script
 #- Php ./cpd_script.php -cpd-xml cpd-output.xml
 
 only:
 - dev
 except:
 - tags
 artifacts:
 paths:
 - cpd-output.xml
 allow_failure: true
 
 
 
 
 testing_project:
 stage: Testing
 tags:
 - Ios_Shell
 script:
 - xcodebuild test -workspace 3lacam.xcworkspace -scheme 3lacam -destination 'platform=iOS Simulator,name=iPhone 8 Plus,OS=11.0'   -derivedDataPath .../test-files
 
 artifacts:
 paths:
 - .../test-files
 
 
 
 archive_project:
 stage: Deployment
 script:
 - xcodebuild clean archive -archivePath build/3lacam -scheme 3lacam
 - xcodebuild -exportArchive -exportFormat ipa -archivePath "build/3lacam.xcarchive" -exportPath "build/3lacam.ipa" -exportProvisioningProfile "com.bright-creations.3lacam"
 only:
 - Master
 artifacts:
 paths:
 - build/3lacam.ipa
 tags:
 - Ios_Shell
 Message Input
 
 Message caravaro
 */
