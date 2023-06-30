import click
from mylib.hello import do_hello



@click.command()
@click.option('--count', default=3, help='Number of greetings.')
def hello(count):
    """Simple program that greets NAME for a total of COUNT times."""
    for x in range(count):

        print(do_hello(), '6')

if __name__ == '__main__':
    hello()
