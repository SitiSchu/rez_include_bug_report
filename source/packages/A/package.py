name = 'A'
version = '1'

build_command = ""


@include('utils')
def commands():
    expected_utils_version = 2
    utils.print_info(this, expected_utils_version)
