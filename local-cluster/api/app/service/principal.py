
def hello_world(name: str = None):
    if name:
        output_msg = f"Hello World, {name}!!"
    else:
        output_msg = f"Hello World!!"

    return output_msg

