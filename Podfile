# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'RNAndiOS' do
  # Uncomment the next line if you're using Swift or would like to use dynamic frameworks
  # use_frameworks!

  # Pods for RNAndiOS

pod 'Yoga',  :path => ‘./RN/node_modules/react-native/ReactCommon/yoga'
pod 'React', :path => ‘./RN/node_modules/react-native', :subspecs => [
 'Core',
 'RCTText',
 'RCTImage',
 'RCTAnimation',
 'RCTNetwork’,
 'RCTWebSocket',
 'BatchedBridge' 
]

  target 'RNAndiOSTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'RNAndiOSUITests' do
    inherit! :search_paths
    # Pods for testing
  end

end
