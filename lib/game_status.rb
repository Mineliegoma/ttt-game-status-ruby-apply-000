# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
#top_row_win=[0,1,2]
#bottom_row_win = [6,7,8]
#millde_row_win=[3,4,5]
#first_column_win=[0,3,6]
#second_column_win=[0,3,6]
#third_column_win=[2,5,8]
#right_diagonal_win=[2,4,6]
#left_diagonal_win=[0,4,8]

WIN_COMBINATIONS = [[0,1,2],[6,7,8],[3,4,5],[0,3,6],[1,4,7],[2,5,8],[2,4,6],[0,4,8]]
def won?(board)
  WIN_COMBINATIONS.detect do |winning|
    @board.cells[winning[0]] == @board.cells[winning[1]] &&  @board.cells[winning[1]] == @board.cells[winning[2]]
  end
end
    
    #win_index_1=winning[0]
   # win_index_2 = winning[1]
    #win_index_3 = winning[2]
    
    #position_1 = board[win_index_1] #LOAD THE VALUE OF THE BOARD AT INDEX #win_index_1
    #position_2 = board[win_index_2]
    
    #position_3 = board[win_index_3]
    
    
    
    
     #if position_1 == "X" && position_2 =="X" && position_3 == "X" 
       #return winning
  
    #end
    
  #end
  #false
  #end
  
  def full?(board)
    if board.any? {|index| index == nil || index == " " || index == ""}
      false
    else
    true
  end
end
 
 def draw?(board)
   if !won?(board) && full?(board)
    true
  elsif !won?(board) && !full?(board)
  false
end
end 

def over?(board)
  if won?(board) || draw?(board) || full?(board)
    true
  else
    false
  end
end

def winner(board)
  if won?(board)
   board[won?(board)[index][0]]
  
end
end

