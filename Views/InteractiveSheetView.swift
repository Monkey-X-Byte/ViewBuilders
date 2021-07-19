//
//  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
//

import SwiftUI

@available(iOS 15.0, *)
struct InteractiveSheetView<Content: View>: UIViewControllerRepresentable {

  @Binding var isPresented: Bool
  let content: Content
  let showsIndicator: Bool
  let backgroundColor: Color
  let onDismiss: (() -> Void)?
  let mode: Mode

  enum Mode {
    case half
    case interactive
  }

  func makeCoordinator() -> Coordinator {
    return Coordinator(parent: self)
  }

  func makeUIViewController(context: Context) -> UIViewController {
    let controller = UIViewController()
    controller.view.backgroundColor = .clear

    return controller
  }

  func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    if isPresented {
      let sheetController = InteractiveSheetViewController(rootView: content, showIndicator: showsIndicator, backgroundColor: backgroundColor, mode: mode)
      sheetController.presentationController?.delegate = context.coordinator
      DispatchQueue.main.async {
        uiViewController.present(sheetController, animated: true)
        isPresented.toggle()
      }
    }
  }

  final class Coordinator: NSObject, UISheetPresentationControllerDelegate {

    private let parent: InteractiveSheetView

    init(parent: InteractiveSheetView) {
      self.parent = parent
    }

    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
      parent.onDismiss?()
    }
  }
}

@available(iOS 15.0, *)
final class InteractiveSheetViewController<Content: View>: UIHostingController<Content> {

  private let showsIndicator: Bool
  private let backgroundColor: Color
  private let mode: InteractiveSheetView<Content>.Mode

  init(rootView: Content, showIndicator: Bool, backgroundColor: Color, mode: InteractiveSheetView<Content>.Mode) {
    self.showsIndicator = showIndicator
    self.backgroundColor = backgroundColor
    self.mode = mode
    super.init(rootView: rootView)
  }

  @MainActor @objc required dynamic init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    if let presentationController = presentationController as? UISheetPresentationController {
      view.backgroundColor = UIColor(backgroundColor)
      presentationController.detents = mode == .interactive ? [.medium(), .large()] : [.medium()]
      presentationController.prefersGrabberVisible = showsIndicator
    }
  }
}
