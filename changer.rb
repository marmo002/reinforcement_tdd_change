class Changer

  def self.make_change(value)
    coins = [1, 5, 10, 25]
    change = []

    if coins.include?(value)
      change << value
    else
      coins.reverse_each do |x|
        while value >= x
            change << x
            value -= x
        end
      end
    end

    return change

  end

end
