//
//  NavigationController.swift
//  AppwiseCore
//
//  Created by David Jennes on 25/09/16.
//  Copyright © 2016 Appwise. All rights reserved.
//

import UIKit

/// UINavigationController that passes calls for orientation and status bar to it's top
/// view controller.
open class NavigationController: UINavigationController {
	open override var shouldAutorotate: Bool {
		return topViewController?.shouldAutorotate ?? super.shouldAutorotate
	}

	open override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
		return topViewController?.supportedInterfaceOrientations ?? super.supportedInterfaceOrientations
	}

	open override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
		return topViewController?.preferredInterfaceOrientationForPresentation ?? super.preferredInterfaceOrientationForPresentation
	}

	open override var childViewControllerForStatusBarStyle: UIViewController? {
		return topViewController
	}

	open override var childViewControllerForStatusBarHidden: UIViewController? {
		return topViewController
	}
}
