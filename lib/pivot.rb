
Dir[File.dirname(__FILE__) + '/pivot/*.rb'].each do |pivot|
  require pivot
end

module Pivot
end
