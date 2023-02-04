require_relative './app'

class MenuClass
  def initialize
    @app = App.new(self)
    puts 'Welcome'
    show_menu
  end

  def show_menu
    puts "\nChoose an option:
        1- All books
        2- All people
        3- Create a person
        4- Create a book
        5- Create a rental
        6- All rentals for a given person id
        7- Exit"
    user_input = gets.chomp
    select_option(user_input)
  end

  def select_option(user_input)
    menu_list = {
      '1' => :list_all_books,
      '2' => :list_all_people,
      '3' => :create_person,
      '4' => :create_book,
      '5' => :create_rental,
      '6' => :list_all_rentals,
      '7' => :exit
    }
    option = menu_list[user_input]
    if option.nil?
      puts 'Invalid number'
      show_menu
    else
      @app.send(option)
    end
  end
end

def main
  MenuClass.new
end

main
