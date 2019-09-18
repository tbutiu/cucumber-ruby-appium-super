# frozen_string_literal: true

require 'i18n'
require 'rspec'
require 'yaml'
require 'logger'
require 'cucumber'
require 'appium_lib'
require 'selenium-webdriver'
require_relative 'spec_helper/spec_helper'

$wait = Selenium::WebDriver::Wait.new(timeout: 60)

time = Time.new
time = time.strftime('%d-%m-%Y')
$logger = Logger.new("./exec-logs/exec-log-#{time}.log")

def load_appium_configuration(platform)
  dir = "#{Dir.pwd}/config/#{platform}/appium.txt"
  Appium.load_appium_txt file: File.expand_path(dir, __FILE__), verbose: true
end

env = ENV['PLATFORM_NAME'].downcase

case env
when 'android'
  caps = load_appium_configuration(env)
  caps[:appium_lib][:export_session] = true
when 'ios'
  caps = load_appium_configuration(env)
  caps[:appium_lib][:export_session] = true
else
  raise("Plataforma não suportada #{ENV['PLATFORM_NAME']}")
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
Appium::TouchAction.new(caps)


World(Pages)