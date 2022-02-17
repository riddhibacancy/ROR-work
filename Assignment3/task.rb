# convert multi dimentation array in single dimension but without using a flatten method

$single_dim=[]
def convert(arr)
    
    
    arr.each do |x|   # or we can use ( for x in arr )
        if(x.class==Array)
           
            convert(x)    
        else 
           
            $single_dim.push(x)
        end
    end
end

multi_dim=[1,5,5,[1,2,3,[5,[8,9,10,[5,6]]]],10 , [20,30]]
convert(multi_dim)

print $single_dim

