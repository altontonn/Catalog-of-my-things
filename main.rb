require './app'

def main
  puts "Welcome to Catalog of My Life App!\n \n"
  app = APP.new
  app.load
  loop do
    app.menu
    choice = gets.chomp.to_i
    app.option(choice)
    exit if choice == 11
  end
end

main
