sayHello :: String -> IO ()
sayHello x =
    putStrLn ("Hello, " ++ x ++ "!")

triple x = x * 3
half x = x /2
square x = x*x

prelude = 3.14
areaOfCircle r = prelude * (r * r)