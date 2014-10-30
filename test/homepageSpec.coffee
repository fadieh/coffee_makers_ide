Browser = require 'zombie'
chai = require 'chai'
expect = chai.expect
server = require '../server'
fs = require 'fs'
describe = require 'describe'

describe 'Homepage', ->
	browser = null

	before ->
		@server = server.listen(9292)
		browser = new Browser(site: "http://localhost:9292")
		browser.visit '/'

	it 'should show a welcome message', ->
		expect (browser.text('h1')).to.eql 'Welcome to Maker\'s IDE'