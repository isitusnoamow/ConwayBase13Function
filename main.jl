print("Enter Base 10 Number: "); 
nonint = false;
decimalstr = readline();
decimal = parse(Float64,decimalstr);
integer = trunc(Int64,decimal);
if length(split(decimalstr,".")) > 1
    fraction = "." * split(decimalstr,".")[2];
    nonint = true;
    println(fraction);
end
b13integer = string(integer,base=13);
println(b13integer);