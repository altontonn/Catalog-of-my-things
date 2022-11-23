require './app'

def main
  app = APP.new
  loop do
    app.menu
    choice = gets.chomp.to_i
    app.options(choice)
    break if choice == 10
  end
end

main
