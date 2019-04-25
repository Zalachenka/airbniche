class JoinTableSitterDog < ApplicationRecord
		t.belongs_to :dog, index: true
    	t.belongs_to :dog_sitter, index: true
end
