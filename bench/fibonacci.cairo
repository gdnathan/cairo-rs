func main():
    fib_wrapper(50)
    ret
end

func fib_wrapper(n):
    # Call fib(1, 1, 1000).
    let result: felt = fib(1, 1, 1000)

    # Make sure the 1000th Fibonacci number is 222450955505511890955301767713383614666194461405743219770606958667979327682.
    assert result = 222450955505511890955301767713383614666194461405743219770606958667979327682 
    if n != 0:
        fib_wrapper(n - 1)
    end
    ret
end

func fib(first_element, second_element, n) -> (res : felt):
    jmp fib_body if n != 0
    tempvar result = second_element
    return(second_element)

    fib_body:
    tempvar y = first_element + second_element
    fib(second_element, y, n - 1)
    ret
end
