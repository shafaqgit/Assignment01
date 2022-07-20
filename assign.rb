def input(n)
    if n<1 || n>(2*10**5) 
        loop do 
           puts "Please re-enter the value of n:"
           n=gets
           if n>=1 || n<=(2*10**5) 
            break
           end 
        end 
    end 
    return n 
end

def leaderboard_problem(n,m,aps,lbs)  
    lbs.sort! {|x, y| y <=> x}
    check=false
   
    res=[]
    for i in 0...m do 
        dup=lbs[0]
        rank=1
        check=false
        for j in 0...n do 

        if dup == lbs[j] 
              
        else 
            rank=rank+1
            dup=lbs[j]
        end 

            if aps[i]>=lbs[j]
                res[i]=rank
                check=true
                break
            end

        end
        if check==false 
            res[i]=rank+1
        end 

    end
    return res
end


lbs=[]
aps=[]
n=lbs.length

puts"Please enter the value of n:"
n=gets.chomp.to_i
n=input(n)

puts "Please enter your score-list:"
for i in 0...n do 
    lbs[i]=gets.chomp.to_i
    if lbs[i].to_i>(10**9)
        loop do 
            puts "Please re-enter your value"
            lbs[i]=gets.chomp.to_i
            if lbs[i]<=(10**9)
                break
            end
        end
    end
end

puts "Please enter the value of m:"
m=gets.chomp.to_i
m=input(m)

puts "Please enter your player-list:"
for i in 0...m do 
    aps[i]=gets.chomp.to_i
    if aps[i].to_i>(10**9)
        loop do 
            puts "Please re-enter your value"
            aps[i]=gets.chomp.to_i
            if aps[i]<=(10**9)
                break
            end
        end
    end
end


res=leaderboard_problem(n,m,aps,lbs)

print(res)