# aの組み合わせ

a = [0,1,2,3]
array = []
4.times do |t|
    array << [a[t]]
    (3-t).times do |u|
        array << [a[t],a[t+u+1]]
        (2-t-u).times do |v|
            array << [a[t],a[t+u+1],a[t+u+v+2]]
            (1-t-u-v).times do |w|
                array << [a[t],a[t+u+1],a[t+u+v+2],a[t+u+v+w+3]]
            end
        end
    end
end

p array　
# => [[0], [0, 1], [0, 1, 2], [0, 1, 2, 3], [0, 1, 2, 3, 3], 
# [0, 1, 2, 3, 3, 2], [0, 1, 2, 3, 3, 2, 3], [0, 1, 2, 3, 3, 2, 3, 3], 
# [1], [1, 2], [1, 2, 3], [1, 2, 3, 3], [2], [2, 3], [3]]