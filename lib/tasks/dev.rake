require 'tty-spinner'
require 'rainbow'

namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Loading...", format: :pulse_2)
      spinner.auto_spin
      %x(rails db:drop db:create db:migrate db:seed)
      spinner.success('(successful)')
    else
      puts Rainbow("You are not in development environment").red.bright
    end
  end
end
