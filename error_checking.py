import string

def value_error_checking (self, error_condition : bool, error : string ="") -> bool :
    """
    Checks a condition and raises a ValueError if the condition is not met.

    Args:
        error_condition (bool): The condition to check.
        error (str, optional): The error message to raise if the condition is not met.
            Defaults to an empty string.

    Returns:
        bool: returns True if there is an error, and False to indicate there is not error
    """
    try :
        if error_condition:
            raise ValueError(error)
        else:
            return False
    except ValueError as e:
        print(e)
        return True