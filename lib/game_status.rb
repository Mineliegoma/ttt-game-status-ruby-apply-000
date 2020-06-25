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
  WIN_COMBINATIONS.each do |winning|
    win_index_1=winning[0]
    win_index_2 = winning[1]
    win_index_3 = winning[2]
    win_index_4 = winning[3]
    win_index_5 = winning[4]
    win_index_6 = winning[5]
    win_index_7 = winning[6]
    win_index_8 = winning[7]
    position_1 = board[win_index_1] #LOAD THE VALUE OF THE BOARD AT INDEX win_index_1
    position_2 = board[win_index_2]
    
    position_3 = board[win_index_3]
    position_4 = board[win_index_4]
    position_5 = board[win_index_5]
    position_6 = board[win_index_6]
    position_7 = board[win_index_7]
    position_8 = board[win_index_8]
    
    
    
     if position_1 == "X" && position_2 =="X" && position_3 == "X" || posito
      return winning
  
    end
    
  end
  false
  end
  
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

