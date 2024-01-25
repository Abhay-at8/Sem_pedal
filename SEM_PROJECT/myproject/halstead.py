import os
import radon
from radon.complexity import cc_visit
from radon.metrics import h_visit

def calculate_halstead(directory):
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith('.py'):
                with open(os.path.join(root, file)) as f:
                    content = f.read()
                    try:
                        halstead_result = radon.metrics.h_visit(content)
                        print(f"File: {os.path.join(root, file)}")
                        print(f"Halstead volume: {halstead_result.volume}")
                        print(f"Halstead difficulty: {halstead_result.difficulty}")
                        print(f"Halstead effort: {halstead_result.effort}")
                        print("====================================")
                    except Exception as e:
                        print(f"Error processing file: {os.path.join(root, file)}")
                        print(str(e))

if __name__ == "__main__":
    directory = '/path/to/your/django/project'  # replace with your Django project path
    calculate_halstead(directory)