import Cocoa
import FlutterMacOS

class MainFlutterWindow: NSWindow {

  override func awakeFromNib() {

    let flutterViewController = FlutterViewController()
    let windowFrame = self.frame
    self.contentViewController = flutterViewController
    self.setFrame(windowFrame, display: true)

    // Make window transparent
    self.isOpaque = false
    self.backgroundColor = NSColor.clear
    self.titleVisibility = .hidden
    self.titlebarAppearsTransparent = true

    // Create macOS blur glass background
    let visualEffectView = NSVisualEffectView()
    visualEffectView.material = .hudWindow
    visualEffectView.blendingMode = .behindWindow
    visualEffectView.state = .active
    visualEffectView.frame = self.contentView!.bounds
    visualEffectView.autoresizingMask = [.width, .height]

    // Insert behind the flutter view
    self.contentView?.addSubview(visualEffectView, positioned: .below, relativeTo: flutterViewController.view)

    RegisterGeneratedPlugins(registry: flutterViewController)

    super.awakeFromNib()
  }
}