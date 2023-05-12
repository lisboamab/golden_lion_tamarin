require 'tty-spinner'
require 'rainbow'

namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Drop DB"){ %x(rails db:drop) }
      show_spinner("Create DB"){ %x(rails db:create) }
      show_spinner("Migrate DB"){ %x(rails db:migrate) }
      show_spinner("Populating DB"){ %x(rails dev:add_mining_types db:seed) }
    else
      puts Rainbow("You are not in development environment").red.bright
    end
  end

  desc "Add Mining Types"
  task add_mining_types: :environment do
    show_spinner('Add Mining Types') do
      mining_types = [
        {description: "Proof of Work", acronym: "PoW"},
        {description: "Proof of Stake", acronym: "PoS"},
        {description: "Proof of Capacity", acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
        MiningType.find_or_create_by!(mining_type)
      end
    end
  end

  def show_spinner(start_message)
    spinner = TTY::Spinner.new("[:spinner] #{start_message}...", format: :pulse_2)
    spinner.auto_spin
    yield
    spinner.success('(successful)')
  end
end
