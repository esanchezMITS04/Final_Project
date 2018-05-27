class Request < ApplicationRecord
	belongs_to :users, optional: true;
end
