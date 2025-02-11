#!/bin/bash

# Example use case:
# ./openssl_encrypt_pem_to_p8.sh -p path/to/pem -o path/to/p8 -s "wowTest!"

# Function to print error messages
error_exit() {
    echo "Error: $1" >&2
    exit 1
}

# Parse command-line arguments
while getopts "p:o:s:" opt; do
    case "$opt" in
        p) PEM_FILE_PATH="$OPTARG" ;;
        o) OUTPUT_P8_FILE_PATH="$OPTARG" ;;
        s) PASSPHRASE="$OPTARG" ;;
        *) error_exit "Invalid option" ;;
    esac
done

# Check if OpenSSL is installed
if ! command -v openssl &> /dev/null; then
    error_exit "OpenSSL is not installed or not in PATH. Please install OpenSSL."
fi

# Validate input file
if [[ ! -f "$PEM_FILE_PATH" ]]; then
    error_exit "Input PEM file '$PEM_FILE_PATH' not found."
fi

# Construct OpenSSL command
OPENSSL_COMMAND="openssl pkcs8 -topk8 -inform PEM -outform PEM -in \"$PEM_FILE_PATH\" -out \"$OUTPUT_P8_FILE_PATH\" -passout pass:\"$PASSPHRASE\" -v2 aes-256-cbc"

# Execute OpenSSL command
echo "Executing OpenSSL command..."
eval $OPENSSL_COMMAND

# Check if the output file was created successfully
if [[ -f "$OUTPUT_P8_FILE_PATH" ]]; then
    echo "Success: Encrypted P8 key generated at '$OUTPUT_P8_FILE_PATH'"
else
    error_exit "Failed to create encrypted .p8 file."
fi
