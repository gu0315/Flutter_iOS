# Uncomment the next line to define a global platform for your project
platform :ios, '9.0'

target 'Flutter_iOS' do
  ## Flutter 模块的路径 pod update --verbose --no-repo-update_
  ##绝对路径_
  flutter_application_path = './my_flutter/'
  load File.join(flutter_application_path, '.ios', 'Flutter', 'podhelper.rb')

  target 'Flutter_iOSTests' do
       install_all_flutter_pods(flutter_application_path)
  end
  target 'Flutter_iOSUITests' do
       install_all_flutter_pods(flutter_application_path)
  end
end


