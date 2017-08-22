languages = {
  :oo => {
    :ruby => {
      :type => "interpreted"
    },
    :javascript => {
      :type => "interpreted"
    },
    :python => {
      :type => "interpreted"
    },
    :java => {
      :type => "compiled"
    }
  },
  :functional => {
    :clojure => {
      :type => "compiled"
    },
    :erlang => {
      :type => "compiled"
    },
    :scala => {
      :type => "compiled"
    },
    :javascript => {
      :type => "interpreted"
    }

  }
}


# def reformat_languages(languages)
#   # your code here
#   new_hash = {}
#   languages.each do |x, y|
#       puts "x   #{x}"
#       puts "y   #{y}"
#       puts "y key   #{y.keys}"
#       #new_hash[y.keys] = {}
#       #new_hash[y.keys] = {style: [x]}
#       y.each do |k, x|
#         new_hash[k] = x
#         puts "new_hash   #{new_hash}"
#             puts "y values   #{y.values}"
#       end
#       if languages.keys == :oo
#   end
# end


def reformat_languages(languages)
  new_hash = {}
  languages.each do |x, y|
    puts "x   #{x}"
    puts "y   #{y}"
    y.each do |k, j|
      puts "k   #{k}"
      puts "j   #{j}"
      new_hash[k] ||= j
      new_hash[k][:style] ||= []
      new_hash[k][:style] << x
            puts "new_hash   #{new_hash}"
    end
  end
  new_hash
end



reformat_languages(languages)
