def printMultiples(n, high)
  i = 1
  while i <= high
    print (n*i).to_s+"\t"
    i += 1
  end
  puts
end

def printMultTables(high)
  i = 1
  while i <= high
    printMultiples(i,i)
    i += 1
  end
end

# puts printMultTables(4)

def quack
  a = ["J","K","L","M","N","O","P","Q"]
  b = "ack"
  c = "uack"

  i =0
  while i < a.length
    if a[i] == "O" || a[i] == "Q"
      puts a[i]+c
    else
      puts a[i]+b
    end
    i += 1
  end
end

# puts quack

def a_count(str)
  count = 0
  i = 0
  while i < str.length
    if str[i] == "a"
      count += 1
    end
    i += 1
  end

  return count
end

# puts a_count("banana")

def recurse(n)
  if n == 0
    return "BOOM!!!"
  else
    puts n
  end

  return recurse(n-1)
end

# puts recurse(10)

def random_statement
  num = ((rand(3)).floor)+1

  case num
  when 3
    puts num.to_s+": Ruby has lots of syntactic sugar"
  when 2
    puts num.to_s+": The man Matz created Ruby"
  when 1
    puts num.to_s+": Python doesn't require end statements like Ruby"
  end
end

# puts random_statement

def nums(n)
  if n == 4
   return "Sky's the limit!"
  else
    puts n.to_s
  end

  nums(n+1)
end

# puts nums(1)

def flatten(arr)
  flat = []
  i = 0
  while i < arr.length
    sub_arr = arr[i]
    if sub_arr[1] == nil
      flat << arr[i]
    end
    if sub_arr[1] != nil
      sub_arr.each do |j|
        flat << j
      end
    end
      i += 1
    end
  return flat
end

# puts flatten([1,[2,3,4,5,6],7,8,9])

def nonsense(a=0,b=0,c=0)
  if a != b
    puts "a is not equal to b"
  end
  if b != c
    puts "b is not equal to c"
  end
  if a != c
    puts "a is not equal to c"
  end

  if a && b && c
    puts "got all three!"
  end

  if a!=0 && b!=0
    puts "we need c too!"
  end

  if a!=0 && b!=0 && c!=0
    puts "the whole gang!"
  end
end

# puts nonsense(1,2,3)

def isPrime(n)

  if n <= 1
    return false
  else

    i = 2
    while i < n
      if n%i == 0
        return false
      end
      i += 1
    end

  end

  return true
end

# puts isPrime(227)

def count_vowels(str)
  count = 0

  i = 0
  while i < str.length
    if str[i] =~ /[aeiou]/
      count += 1
    end
    i += 1
  end

  return count
end

# puts count_vowels("mitsubishi")

def randomList(n)
  s = [0] * n
  i = 0
  while i < s.length
    s[i] = (rand*80+1).floor
    i += 1
  end

  p s
end

# puts randomList(8)

def splitter(str)
  word = ''
  arr = []

  str.each_char do |c|
    if c =~ / /
      arr << word
      word = ''
    end
    if c =~ /[a-zA-Z]/
      word << c
    end
  end

  arr << word
  p arr
end

# puts splitter("dag nabit dag gummit")

def getPowerOfTwo(n)
  2 ** n
end

# puts getPowerOfTwo(10)

def isPowerOfTwo(n)
  if n < 1
    return false
  end

  while true
    if n == 1
      return true
    elsif n % 2 == 0
      n = n/2
    else
      return false
    end
  end
end

# puts isPowerOfTwo(1024)

name = 'Bill'
roles = ['database','model','controller']
role = 0

case name
when 'Brian'
  role = 1
when 'Trevor'
  role = 2
when 'Bill'
  role = 0
else
  role = 0
end

# puts "Hello #{name}, your role is #{roles[role]}"

############### here is x that is used from here down ######################
x = [-3, 3, 5, 7]

def kill_neg(arr)
    i=0
    while i < arr.length
        if arr[i] < 1
            arr[i] = arr[i].abs
        end
        i += 1
    end

    arr
end

# puts kill_neg(x)

def shift_left(arr)
    i = 0
    while i < arr.length
        if i < arr.length-1
            arr[i] = arr[i+1]
        else
            arr[i] = 0
        end
        i += 1
    end

    arr
end

# puts shift_left(x)

def neg_to_string(arr)
    i=0
    while i < arr.length
        if arr[i] < 1
            arr[i] = 'Dojo'
        end
        i += 1
    end

    arr
end

# puts neg_to_string(x)

def random_array(size)
    s = [0] * size

    i = 0
    while i < s.length
        num = rand(100)
        s[i] = num
        i += 1
    end

    p s
end

# puts random_array(10)

def basic_swap(arr)
    temp = arr[0]
    arr[0] = arr[arr.length-1]
    arr[arr.length-1] = temp
    arr
end

# puts basic_swap(x)

x = [1,5,7,9,11]

def reverse(arr)
    i = 0
    while i < (arr.length/2).floor
        tmp = arr[i]
        arr[i] = arr[arr.length-1-i]
        arr[arr.length-1-i] = tmp
        i += 1
    end

    arr
end

# puts reverse(x)

def insert_val_array(arr,insert,val)
    i = arr.length
    while i >= insert
        arr[i] = arr[i-1]
        i -= 1
    end

    arr[insert] = val

    arr.to_s + " arr["+insert.to_s+"] = "+val.to_s+" was inserted"
end

# puts insert_val_array(x,1,0)

previous = {1 => 4,
                  2 => 8}

def fibonacci(key)
    previous = {1 => 4,
                      2 => 8}

    if previous[key]
        return previous[key]
    else
        value = fibonacci(key-1)+fibonacci(key-2)
        previous[key] = value
        return previous[key]
    end
end

# puts fibonacci(5)

lettercounts = {}

"Mississippi".each_char do |char|
    lettercounts[char] = lettercounts[char] == nil ? lettercounts[char] = 1 : lettercounts[char] += 1
end

# puts lettercounts

def infiniteloop(str)
    new_str = ''
    arr = str.split('')
    while true
        new_str += arr.each { |c| return c }
        if arr.length == new_str.length
            return
        end
    end

    return new_str
end

# puts infiniteloop("basketball")

class Card
    @@suitList = ['Spades','Hearts','Clubs','Diamonds']
    @@rankList = ['x','Ace','2','3','4','5','6','7','8','9','10','Jack','Queen','King']

    def initialize(suit=0, rank=2)
        @suit = suit
        @rank = rank
    end

    def to_s
        @@rankList[@rank].to_s + " of " + @@suitList[@suit].to_s
    end
end

class Deck
    def initialize
        @@cards = []
        (0..3).to_a.each do |suit|
            (1..13).to_a.each do |rank|
                @@cards << Card.new(suit, rank)
            end
        end
    end

    def printDeck
        for card in @@cards
            puts card
        end
    end

    def shuffle
        for i in (1..@@cards.length) do
            j = Random.new.rand(i..@@cards.length)
            @@cards[i], @@cards[j] = @@cards[j], @@cards[i]
        end
    end

    def removeCard(card)
        if self.cards[card]
            self.cards.delete(card)
            return true
        else
            return false
        end
    end

    def pop(card)
        popped = @@cards.pop
        return popped
    end
end

class Hand < Deck
    def initialize(name="")
        self.cards = []
        self.name = name
    end

    def addCard(card)
        self.cards.push(card)
    end
end

c = Card.new(1,10)

d = Deck.new
# d.printDeck
# d.shuffle
# d.printDeck

# f = File.new("./file.txt", "w")
# f.puts("Hey this is a line")
# f.puts("Hey this is a second line")
# f.close

lines = ["Hey this is one line", "This is another line", "This is a third line"]

f = File.new("./file.txt", "w")
lines.each { |line| f.puts(line) }
f.close

f = File.open("./file.txt", "r")

# lines = []
#
# while (line = f.gets)
#     lines << line
# end
#
# lines.each { |l| print l }
#
#
# begin
#     file = File.open('./file.txt', 'r')
#     while (line=file.gets)
#         puts line
#     end
# rescue => e
#     puts e
# end


def recurse(n=1,m=30)
    sum  = 0
    sum += n

    if n > m
        return sum
    end

    recurse(n+2)
end

# puts recurse(1)

def anagrams(s1="clint eastwood",s2="old west action")
    s1 = s1.gsub(/\s+/,'')
    s2 = s2.gsub(/\s+/,'')

    if s1.length != s2.length
        return false
    end

    counts = {}

    s1.each_char do |letter|
        if counts[letter]
            counts[letter] += 1
        else
            counts[letter] = 1
        end
    end

    s2.each_char do |letter|
        if counts[letter]
            counts[letter] -= 1
        else
            counts[letter] = 1
        end
    end

    for key in counts
        if counts[key] != 0
            return false
        end
    end

    return true
end

# puts anagrams()

def pair_sum(arr,k)
    if arr.length < 2
        return
    end

    require 'set'
    seen = Set.new
    output = Set.new

    arr.each do |num|
        target = k-num

        if !seen.include? target
            seen.add(num)
        else
            output.add([[num,target].min,[num,target].max])
        end
    end

    return output.map { |s| s.to_s+"\n" }
end

# puts pair_sum([1,2,3,4],5)

def r_fac(n)
    if n == 0
        return 1
    else
        return n * r_fac(n-1)
    end
end

# puts r_fac(3)

def r_sigma(n)
    if n == 0
        return 0
    else
        return n + r_sigma(n-1)
    end
end

# puts r_sigma(3)

def custom_split(arr)
    length = arr.length
    spaces = [' ']
    new_words = []

    i = 0
    while i < length
        if arr[i] != spaces
            word_start = i
                while i < length && arr[i] != spaces
                    i += 1
                end
            new_words << arr[word_start..i]
        end
        i += 1
    end

    p new_words
end

# puts custom_split(' Water mellon tastes very good         ')

def compress(str)
    l = str.length
    r = ""
    cnt = 1

    if l == 1
        return str
    end

    if l == 0
        return ""
    end

    i = 1
    while i < l
        if str[i] == str[i-1]
            cnt += 1
        else
            r = r + str[i-1] + cnt.to_s
            cnt = 1
        end
        i += 1
    end

    return r = r + str[i-1] + cnt.to_s
end

# puts compress("abcc")

def unique(str)
    require 'set'
    chars = Set.new

    str.each_char do |char|
        if chars.include? char
            return false
        else
            chars.add(char)
        end
    end

    return true
end

# puts unique('abcd')

def pair_sum(arr,k)
    if arr.length < 2
        return arr
    end

    require 'set'
    seen = Set.new
    output = Set.new

    arr.each do |n|
        target = k-n

        if !seen.include? target
            seen.add(n)
        else
            output.add([[n,target].min,[n,target].max])
        end
    end

    puts output = output.map { |e| e.to_s + "\n" }
end

# puts pair_sum([1,3,2,2,],4)

def sum_func(str)
	len = str.length-1

	i = 0
	while i < str.length
		if i == len
			return str[i].to_i
		end

		return str[i].to_i + sum_func(str[i+1])

		i += 1
	end

end

# puts sum_func('4321')

# puts 4321 % 10 # prints 21 (takes off the first two digits from the front and returns the rest)
# puts 4321 / 10 # prints 43 (takes off last two digits from the end and returns the rest)


def isPalindrome(str)
    i = 0
    while i < str.length
        if str[i] != str[str.length-1-i]
            return false
        end
        i += 1
    end
    return true
end

# puts isPalindrome("choohc")

def removeNeg(arr)
    if arr[arr.length-1] < 0
        arr.pop
    end

    i = 0
    while i < arr.length-1

        if arr[i] < 0
            j = i
            while j < arr.length-1
                tmp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = tmp
                j += 1
            end
            arr.pop
        end

        i += 1
    end
    return arr
end

# puts removeNeg([-1,3,4,-2,3,-4,5,-9,5,-2,7,-9])
