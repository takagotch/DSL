class Greeter
  GREETINGS = {
    :dutch => 'Hello',
    :enflish => 'Hello',
    :french => 'Bon Jour',
    :japanese => 'konn',
    :spnish => 'Hala'
  }

  def method_missin(method_name, *args)
    name = method_mane.to_s.split(/_/).first
    language = method_name.to_s.split(/_/).last.to_sym

    return unless name == 'greet'
    puts GREETINGS[language] + '!'
  end
end

greeter = Greeter.new
greeter.greet_in_dutch
greeter.greet_in_english
greeter.greet_in_french
greeter.greet_in_japanese
greeter.greet_in_spanish


