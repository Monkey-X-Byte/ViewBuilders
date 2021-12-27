#
#  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
#

Pod::Spec.new do |s|
  s.name             = 'ViewBuilders'
  s.version          = '0.0.9'
  s.summary          = 'A short description of ViewBuilders.'
  s.description      = <<-DESC
  ViewBuilders is a powerful library for SwiftUI. It allows you to use View Modifiers to display components such as toaster, HUD, custom dialog and more.

  Behind the scenes, a modifier can be done in two different ways: all in SwiftUI or a UIKit-SwiftUI bridge.

  In addition to these View Modifiers, ViewBuilders provides custom EnvironmentValues and modifiers to take full advantage of the preview in Xcode.
                       DESC

  s.homepage         = 'https://github.com/LucasAbijmil/ViewBuilders'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lucas Abijmil' => 'lucas.abijmil@gmail.com' }
  s.source           = { :git => 'https://github.com/LucasAbijmil/ViewBuilders.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/lucas_abijmil'
  s.ios.deployment_target = '15.0'
  s.swift_version = '5.5'
  s.source_files = 'ViewBuilders/Classes/**/*.{h,m,swift,xcdatamodeld}'
end
