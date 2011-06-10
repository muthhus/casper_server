require 'rubygems'
require 'sinatra'
require 'haml'
require 'crack'
require 'casper_reports'
require 'base64'

class CasperServer < Sinatra::Base
  VERSION = '0.0.3'
  FORM = /multipart\/form-data/
  XML = /application\/xml/
  JSON = /application\/json/

  set :public, File.dirname(__FILE__) + '/static'
  set :views, File.dirname(__FILE__) + '/views'

  get '/' do
    haml :index
  end

  helpers do
    def decode(data)
      Base64.decode64 data
    end

    def get_input_data
      if request.content_type =~ FORM
        [ params['casper']['jrxml'][:tempfile].read, params['casper']['data'][:tempfile].read, params['casper']['xpath'], params['casper']['type']]
      elsif request.content_type =~ XML
        #parse xml...
        xml = Crack::XML.parse(request.body.read)
        [ decode(xml['casper']['jrxml']), decode(xml['casper']['data']), xml['casper']['xpath'], params['casper']['type']]
      elsif request.content_type =~ JSON
        json = Crack::JSON.parse(request.body.read)
        [ decode(json['casper']['jrxml']), decode(json['casper']['data']), json['casper']['xpath'], params['casper']['type']]
      end
    end
  end

  post '/' do

    jrxml, xmldata, xpath, type = get_input_data
    type = 'pdf' unless type
    
    casper = CasperReports.new
    report = casper.compile jrxml, xmldata, xpath, type

    content_type "application/pdf" if type.eql?('pdf')
    content_type "application/vnd.ms-excel" if type.eql?('xls')
    
    attachment "casper.#{type}"
    report
  end

end