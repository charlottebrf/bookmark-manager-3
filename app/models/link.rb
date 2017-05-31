require 'data_mapper'
require 'dm-migrations'

DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'postgres://localhost/bookmark_manager_test')

class Link
  include DataMapper::Resource
  property :id, Serial
  property :url, String
  property :title, String
end

DataMapper.finalize
DataMapper.auto_migrate!
