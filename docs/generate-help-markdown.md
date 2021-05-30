# generate-help-markdown(7) 0.1.0

Uses reflection on scripts to show computed help output

## usage

    generate-help-markdown <COMMAND> <SHOW_SOURCE>

## arguments

    command   path to command to generate help for

## examples

generate help for the auto-retry binary

    generate-help-markdown auto-retry

## source

    generate-help-markdown ()
    {
        declare desc="Uses reflection on scripts to show computed help output";
        declare version="0.1.0";
        declare license="MIT License";
        declare COMMAND="${1?Missing command to generate help output for}" SHOW_SOURCE="${2:-false}";
        local COMMAND_FILE="/usr/local/bin/${COMMAND}";
        if [[ -f "$COMMAND" ]]; then
            COMMAND_FILE="$COMMAND";
        fi;
        if [[ ! -f "${COMMAND_FILE}" ]]; then
            fn-log-error "Invalid command '${COMMAND_FILE}'";
            return 1;
        fi;
        if ! fn-validate-command-file "$COMMAND_FILE"; then
            return 1;
        fi;
        fn-info "$COMMAND_FILE" "main" "$SHOW_SOURCE"
    }

## license

MIT License
