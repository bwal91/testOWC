source 'http://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# gem 'wdm', '>= 0.1.0'

gem 'mail_form'
gem 'hirb'
gem 'rails', '~> 5.0.1'
gem 'pg'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 3.0'
gem 'bcrypt', '~> 3.1.7'

#Added by Brandon Until END
gem 'chosen-rails'
gem 'semantic-ui-sass', github: 'doabit/semantic-ui-sass'



gem 'childprocess', '~> 0.5'

gem 'rubyzip', '~> 1.0'

gem 'websocket', '~> 1.0'

gem 'bootstrap-sass'
gem 'bootstrap-will_paginate'
gem 'will_paginate'

gem 'haml-rails'
gem 'simple_form'
gem 'autoprefixer-rails'
gem 'mailboxer'
gem 'jquery-ui-rails'



#END for Brandon


# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'

  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
