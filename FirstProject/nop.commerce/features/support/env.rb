require 'rubygems'
require 'watir-webdriver'
require 'rspec'
require 'page-object'
require 'pretty_face'
require 'fig_newton'
require 'logger'
require_relative '../support/accessories_world/accessories_world'







World(PageObject::PageFactory)
World(AccessoriesWorld)
