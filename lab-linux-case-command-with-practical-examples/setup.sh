#!/bin/bash

# Create the project directory
mkdir -p ~/project/files

# Navigate to the project directory
cd ~/project/files

# Create sample files with different extensions
touch file1.txt file2.pdf file3.jpg file4.png file5.gif file6.doc

# Create the file_operations.sh script
cat > file_operations.sh << EOF
#!/bin/bash

echo "Enter a file extension: "
read file_ext

case "\$file_ext" in
  "txt")
    echo "The file is a text document."
    ;;
  "pdf")
    echo "The file is a PDF document."
    ;;
  "jpg" | "png" | "gif")
    echo "The file is an image."
    ;;
  *)
    echo "Unsupported file type."
    ;;
esac
EOF

# Make the script executable
chmod +x file_operations.sh