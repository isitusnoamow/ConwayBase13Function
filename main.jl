using Decimals

function splitNum(x)
    splitted = split(x,".")
    if length(splitted) > 1
        return [splitted[1],"."*splitted[2]]
    end
    return splitted
end

function returnValue(x)
    returning = "0"
    if occursin("..",x)
        returning = "0"
    end
    return returning
end

print("Enter Base 10 Number: ")

decimalstr = readline()
fractional = "."
if length(splitNum(decimalstr)) > 1
    fraction = splitNum(decimalstr)[2]
    fraction = decimal(fraction)
    for i  in 1:20
        global fraction *= 13
        global fractional = fractional * string(parse(Int64,splitNum(string(fraction))[1]),base=13)
        fraction = decimal(splitNum(string(fraction))[2])
    end
end
b13integer = string(parse(Int64,splitNum(decimalstr)[1]),base=13)
b13number = b13integer * fractional
conwayb13number = replace(b13integer,"a"=>"+","b"=>"-","c"=>".")
println(b13number)
println(conwayb13number)