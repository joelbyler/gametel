require 'calabash-android/management/app_installation'

AfterConfiguration do |config|
  FeatureNameMemory.feature_name = nil
end

Before do |scenario|
  deploy_app unless already_installed
  FeatureNameMemory.feature_name = scenario.feature.name
end

at_exit do
  #	uninstall_apps
end

def already_installed()
  !FeatureNameMemory.feature_name.nil?
end

def deploy_app()
  log "Is first scenario - reinstalling apps"
  uninstall_apps
  install_app(ENV["TEST_APP_PATH"])
  install_app(ENV["APP_PATH"])
end

FeatureNameMemory = Class.new
class << FeatureNameMemory
  @feature_name = nil
  attr_accessor :feature_name
end
