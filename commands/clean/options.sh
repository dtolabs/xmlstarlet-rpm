# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Wed Dec  5 14:11:59 PST 2012
#
#/ usage: xmlstarlet-rpm:clean [ --package-name <xmlstarlet>] 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {
    
    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --package-name) rerun_option_check $# ; PACKAGE_NAME=$2 ; shift ;;
            # help option
            -?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.
    [ -z "$PACKAGE_NAME" ] && PACKAGE_NAME="xmlstarlet"
    # Check required options are set

    # If option variables are declared exportable, export them.

    #
    return 0
}


# Initialize the options variables to null.
PACKAGE_NAME=


