#
# Be sure to run `pod lib lint EosioSwiftSoftkeySignatureProvider.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'eosio-wallet-swift-provider'
  s.version          = '0.1.2'
  s.summary          = 'Experimental Software Key Signature Provider for Eosio SDK for Swift.'
  s.homepage         = 'https://github.com'
  s.license          = { :type => 'MIT', :text => <<-LICENSE
                           Copyright (c) 2017-2019 block.one and its contributors.  All rights reserved.
                         LICENSE
                       }
  s.author           = { 'Kenny' => 'sg0031@naver.com' }
  s.source           = { :git => 'https://github.com/sg0031/eosio-wallet-swift-provider.git', :tag => s.version.to_s}


  s.source_files =  'EosioSwiftSoftkeySignatureProvider/**/*.{c,h,m,cpp,hpp}',
                    'EosioSwiftSoftkeySignatureProvider/**/*.swift'

  s.swift_version         = '5.0'
  s.ios.deployment_target = '10.0'


  s.libraries = "c++"
  s.pod_target_xcconfig = { 'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17',
                            'CLANG_CXX_LIBRARY' => 'libc++',
                            'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
                            'CLANG_ENABLE_MODULES' => 'YES',
                            'SWIFT_COMPILATION_MODE' => 'wholemodule',
                            'ENABLE_BITCODE' => 'YES' }

  s.ios.dependency 'eosio-swift-version-10', '~> 0.1.1'
  s.ios.dependency 'eosio-swift-cc-version-10', '~> 0.1.1'
  s.ios.dependency 'CryptoSwift', '~> 0.15.0'
end
