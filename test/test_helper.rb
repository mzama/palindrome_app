ENV['RACK_ENV'] = 'test'

require_relative '../app'
require 'rack/test'
require 'nokogiri'
require 'minitest/autorun'
require 'minitest/reporters'
Minitest::Reporters.use!

#Return the HTML document.
def doc(response)
    Nokogiri::HTML(response.body)
end