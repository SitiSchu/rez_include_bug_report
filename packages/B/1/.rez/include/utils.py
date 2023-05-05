__version__ = '1'


def print_info(this, expected):
    import os

    self_file = __file__.replace('\\', '/')
    expected_file = os.path.join(this.root, '.rez/include/utils.py').replace('\\', '/')
    print(
        f'Package {this.name}:\n'
        f'        File: {self_file}\n'
        f'   Should be: {expected_file}\n'
        f'     Version: {__version__}\n'
        f'   Should be: {expected}\n'
    )
