//
//  AppDelegate.swift
//  Remote Plus Server
//
//  Created by feihuihui on 2020/1/14.
//  Copyright © 2020 feihuihui. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    var menuIcon: NSStatusItem!

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let statusBar = NSStatusBar.system
        menuIcon = statusBar.statusItem(withLength: NSStatusItem.squareLength)
        menuIcon.button?.title = "RP"
        let menu = NSMenu(title: "This Menu")
        menuIcon.menu = menu

        let item_exit = NSMenuItem()
        item_exit.title = "Exit"
        item_exit.action = #selector(AppDelegate.exitApp)

        let item_showPage = NSMenuItem()
        item_showPage.title = "Show page"
        item_showPage.action = #selector(AppDelegate.showPage)

        let item_hideCursor = NSMenuItem()
        item_hideCursor.title = "Hide cursor"
        item_hideCursor.action = #selector(AppDelegate.hideCursor)
        
        let item_test = NSMenuItem()
        item_test.title = "test"
        item_test.action = #selector(AppDelegate.testMenu)

        menu.addItem(item_exit)
        menu.addItem(item_hideCursor)
        menu.addItem(item_test)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func applicationShouldTerminateAfterLastWindowClosed(_ sender: NSApplication) -> Bool {
        return false
    }

    @objc func hideCursor() {
        NSCursor.hide()
    }

    @objc func testMenu() -> Bool {
        let alert = NSAlert()
        alert.addButton(withTitle: "OK")
        return alert.runModal() == .alertFirstButtonReturn
    }

    @objc func showPage() {
//        let contentView = ContentView()
//        let window = NSWindow(
//            contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
//            styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
//            backing: .buffered, defer: false)
//        window.center()
//        window.setFrameAutosaveName("Main Window")
//        window.contentView = NSHostingView(rootView: contentView)
//        window.makeKeyAndOrderFront(nil)
    }

    @objc func exitApp() {
        exit(0)
    }
}
