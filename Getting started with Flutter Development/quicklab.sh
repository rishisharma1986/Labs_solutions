

#!/bin/bash

# Create a README.md file
cat << 'EOF' > README.md
# Getting Started with Flutter Development

## Lab Name
`flutter create startup_namer`

## Steps

1. **Create a new Flutter project:**
    ```sh
    flutter create startup_namer
    ```

2. **Navigate into the project directory:**
    ```sh
    cd startup_namer
    ```

3. **Update the main.dart file:**
    ```sh
    sed -i '34c\      home: const MyHomePage(title: "Flutter is awesome!"),' lib/main.dart
    ```

4. **Run the Flutter project:**
    ```sh
    flutter run
    ```
EOF

echo "README.md created successfully!"
