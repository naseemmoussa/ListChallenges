def median(list)
    sorted = list.sort
    if sorted.size % 2 == 1
        return sorted[sorted.size / 2]
    else
        return sorted[sorted.size / 2] + sorted[sorted.size / 2 - 1] / 2.0
    end
end

def middleway(list1,list2)
    d = 0
    b = 0
    if list1.size % 2 == 1
        d = list1[list1.size / 2] 
    else 
        d = list1[list1.size / 2] + list1[list1.size / 2 - 1] / 2.0
    end
    if list2.size % 2 == 1
        b = list2[list2.size / 2] 
    else 
        b = list2[list2.size / 2] + list2[list2.size / 2 - 1] / 2.0
    end
    newlist = ([d,b])
    return newlist
end
    
#print middleway([3,4,5],[1,2,3])

def ghappy(str)
    str.size.times do |c|
       slice = str[c]
       slice1 = str[c+1]
       slice2 = str[c-1]
        if slice == "g" && !(slice1 == "g" || slice2 == "g")
           return false
        end
    end
    return true
end
#puts ghappy("gagagaa")
#puts ghappy("ggaggagga")
def merge(list1,list2)
   list = []
   list = list1 + list2
   return list.sort
end

#print merge([3,21,1],[1,2,3])


def codecount(str)
    d = 0
    (str.size-3).times do |c|
        slice = str[c..(c+1)]
        #puts slice
        slice2 = str[c+3]
        if slice + slice2 == "coe"
            d = d + 1
        end
    end
    return d
end

#puts codecount("codeodeodedoedoeoe")

def shiftleft(list)
 index = 0
 newlist = []
    list.each do |c|
        if index == 0
            list[list.size] = 0
        end
        list[index - 1] = c 
        index = index + 1
    end
    newlist = list[0..(list.size-2)]
    return newlist
end

#print shiftleft([1,2,3,4])

def either24(list)
    x = 0
    count = 0
    list.each do |c|
        if c == 2 || c == 4
            if list[x] == list[x + 1] 
                count = count + 1
            end
        end
        x = x + 1
    end
    if count != 1
        return false
    end
    return true
end

#puts either24([1,2,2,3])

def maxspan(list)
    maxcount= 0
    list.each do |n|
        count = 0
        list.each do |c|
            if n != c
                count = count + 1 
            end
        end
        if count > maxcount
            maxcount = count
        end
    end
    return maxcount
end
#puts maxspan([1,2,2,2,2,2,2,1])

def canbalance(list)
    x = 0
    list.each do |c|
        second_half = list[(x)...list.size]
        first_half = list[0...x]
        sum1 = 0
        sum2 = 0
        first_half.each do |b|
            sum1 += b
        end
        second_half.each do |b|
            sum2 += b
        end
        if sum1 == sum2
            return true
        end
    end
    return false
end
#puts canbalance([1,2,2,3,4,5,6,1])

def samefirstlast(list)
    if list.size >= 1 && list[0] == list[list.size-1]
        return true
    end
    return false
end

#puts samefirstlast([1,2,22,2,1])

def threed(list)
    x = 0
    i = 0
    list.each do |c|
        if c == 3
            if list[i+1] == 3
                return false
            end
            x = x + 1
        end
        i = i + 1
    end
    if x == 3
        return true
    end
    return false
end

#puts threed([1,2,3,5,4,3,1,3])
#puts threed([3,1,1,3,3])
#puts threed([3,1,1])

def getsandwich(str)
    bread = false
    inbetween= ""
    breadcount = 0
    (str.size-4).times do |n|
        if str[n..n+4] == 'bread'
            breadcount += 1
        end
    end
    if breadcount != 2
        return ""
    end
    str.size.times do |b|
        slice = str[b..b+4]
        if slice == "bread"
            bread = !bread
        end
        if bread == true
            inbetween += str[b]
        end
    end
    return inbetween[5...inbetween.size]
end

##puts getsandwich("breadyuhbread")
