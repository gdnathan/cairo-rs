func main():
    # Call fib(1, 1, 10).
    let result: felt = fib(1, 1, 10)

    # Make sure the 10th Fibonacci number is 144.
    assert result = 144
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
