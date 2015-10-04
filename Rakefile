# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

begin
  require 'bundler'
  Bundler.require
rescue LoadError
end

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'realm-bug'

  app.libs << '/usr/lib/libc++.dylib'

  # build Realm framework from https://github.com/realm/realm-cocoa
  app.external_frameworks << 'vendor/realm/Realm.framework'
  app.vendor_project 'schemas', :static, :cflags => '-F ../vendor/realm/'
end
