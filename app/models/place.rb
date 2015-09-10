class Place < ActiveRecord::Base
  attr_accessible :geo_id,:name,:lat,:lng,:continent,:status
end
