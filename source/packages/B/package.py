name = 'B'
version = '1'

build_command = ""


@include('utils')
def commands():
    expected_utils_version = 1
    utils.print_info(this, expected_utils_version)
