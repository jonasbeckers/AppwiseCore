//
//  AppDelegate.swift
//  AppwiseCore
//
//  Created by David Jennes on 17/09/16.
//  Copyright © 2016 Appwise. All rights reserved.
//

import Foundation
import UIKit

/// Internal class for configuring the main queue for checking later
final class ConfigureMainQueueApplicationService: NSObject, ApplicationService {
	func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
		DispatchQueue.configureMainQueue()

		return true
	}
}
