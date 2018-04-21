def display_board(board = [" ", " ", " ", " ", " ", " ", " ", " "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(z)
  return z.to_i-1
end

def move(array,index,character="X")
  array[index]=character
  display_board(array)
end

def position_taken?(board,index)
if board[index]==" "
  return false
elsif board[index]==""
  return false
elsif board[index]==nil
  return false
elsif board[index]== "X"|| board[index]= "O"
  return true
end
end

def valid_move?(board,index)
if index>=0 && index<=8 && position_taken?(board,index)==false
  return true
else
  return false
end
end

def turn(board)
  puts "Please enter 1-9:"
  index=gets.strip
  index=input_to_index(index)
  if valid_move?(board,index) == false

    loop do
      puts "Please enter 1-9:"
      index=gets.strip
      index=input_to_index(index)

      if valid_move?(board,index) == true
        break
      end

    end

  end
  move(board,index,character="X")
end
