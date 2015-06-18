actions :enable, :disable

default_action :enable

attribute :name,      :kind_of => String,  :required => true, :name_attribute => true
attribute :fullname,  :kind_of => String,  :required => false, :default => :name
attribute :extension, :kind_of => Array,   :required => false
attribute :command,   :kind_of => String,  :required => true
attribute :path,      :kind_of => String,  :required => false
attribute :platform,  :kind_of => String,  :required => false, :default => :name
attribute :theme,     :kind_of => String,  :required => false, :default => :name
attribute :pathalias, :kind_of => Array,   :required => false
