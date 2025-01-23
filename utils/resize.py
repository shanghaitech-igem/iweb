import os
from PIL import Image

# Define the directory containing the images
image_directory = os.curdir  # Replace with your directory path
output_directory = os.path.join(os.curdir, 'output')  # Replace with your desired output directory

# Create the output directory if it doesn't exist
if not os.path.exists(output_directory):
    os.makedirs(output_directory)

# Desired width
target_width = 800

# Loop through all files in the directory
for filename in os.listdir(image_directory):
    if filename.endswith('.png') or filename.endswith('.jpg'):
        # Open the image
        image_path = os.path.join(image_directory, filename)
        with Image.open(image_path) as img:
            # Skip if the image is already smaller than the target width
            if img.size[0] < target_width:
                print(f"Copying {filename} (already smaller than target width)")
                output_path = os.path.join(output_directory, filename)
                img.save(output_path)
                continue

            # Calculate the new height while preserving the aspect ratio
            width_percent = (target_width / float(img.size[0]))
            new_height = int((float(img.size[1]) * float(width_percent)))

            # Convert to RGB to remove metadata (optional, can be removed if you want to keep the original format metadata)
            img = img.convert('RGB')

            # Resize the image using BICUBIC filter
            resized_img = img.resize((target_width, new_height), Image.Resampling.BICUBIC)

            # Save the resized image in its original format
            output_path = os.path.join(output_directory, filename)
            resized_img.save(output_path)

print("All images have been resized and saved to the output directory.")