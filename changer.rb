class Changer

  def self.make_change(value)
    coins = [1, 5, 10, 25]
    change = []

    ones = Array.new(value, 1)

    if coins.include?(value)
      change << value
    else
      coins.reverse_each do |x|
        while ones.count >= x
            change << x
            ones = ones.drop(x)
        end
      end
    end

    return change

  end

end
