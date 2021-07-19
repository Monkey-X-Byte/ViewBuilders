#
#  Copyright (c) 2021 Lucas Abijmil. All rights reserved.
#

Pod::Spec.new do |s|
  s.name             = 'ViewBuilders'
  s.version          = '0.0.1'
  s.summary          = 'A short description of ViewBuilders.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LucasAbijmil/ViewBuilders'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Lucas Abijmil' => 'lucas.abijmil@gmail.com' }
  s.source           = { :git => 'https://github.com/LucasAbijmil/ViewBuilders.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/lucas_abijmil'

  s.ios.deployment_target = '15.0'
  s.swift_version = '5.5'

  s.source_files = 'ViewBuilders/Classes/**/*'
#   s.frameworks = 'SwiftUI'
end
