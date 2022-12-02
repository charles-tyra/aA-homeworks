def slug_o(fish_arr)
    max_fish = ""
    (0...fish_arr.length).each do |i|
        (0...fish_arr.length).each do |j|
            max_fish = fish_arr[i] if fish_arr[i].length > fish_arr[j]
        end
    end
    max_fish
end


def dOm(fish_arr)
    mid = fish_arr.length / 2
    fish_arr[mid]

end


def like_a_cloctopus(fish_arr)
    max_fish = ''

    fish_arr.each do |fish|
        max_fish = fish if max_fish.length < fish.length
    end
    max_fish
end