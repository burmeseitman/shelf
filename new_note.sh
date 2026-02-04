#!/bin/bash

# Simple script to create a new note from a template

TEMPLATES_DIR="./templates"
TARGET_DIR="./inbox"
DATE=$(date +"%Y-%m-%d")

echo "Select a template:"
select template in $(ls $TEMPLATES_DIR); do
    if [ -n "$template" ]; then
        echo "Enter a title for your note (slug-style, e.g., my-new-note):"
        read title
        
        filename="${TARGET_DIR}/${DATE}-${title}.md"
        
        cp "${TEMPLATES_DIR}/${template}" "$filename"
        
        # Replace {{date}} placeholder if it exists
        if [[ "$OSTYPE" == "darwin"* ]]; then
            sed -i '' "s/{{date}}/${DATE}/g" "$filename"
        else
            sed -i "s/{{date}}/${DATE}/g" "$filename"
        fi
        
        echo "Created: $filename"
        break
    else
        echo "Invalid selection."
    fi
done
