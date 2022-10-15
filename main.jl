print("Enter Base 10 Number: "); 
nonint = false;
decimalstr = readline();
ending = "";
decimal = parse(Float64,decimalstr);
integer = trunc(Int64,decimal);
if length(split(decimalstr,".")) > 1
    fraction = "." * split(decimalstr,".")[2];
    fraction = parse(Float64,fraction);
    nonint = true;
    println(fraction);
    original = fraction;
end
b13integer = string(integer,base=13);
println(b13integer);