import argparse

def process_tmdl_file(filename, year_ranges_str):
    year_ranges = [int(year) for year in year_ranges_str.split(",")]
    year_ranges.append(99990101)

    with open(filename, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    partition_start_index = None
    for i, line in enumerate(lines):
        if line.strip().startswith("partition"):
            partition_start_index = i
            break

    if partition_start_index is None:
        raise ValueError("No partition block found in the file.")

    partition_block = []
    indent_level = len(lines[partition_start_index]) - len(lines[partition_start_index].lstrip())
    for i in range(partition_start_index, len(lines)):
        line = lines[i]
        current_indent = len(line) - len(line.lstrip())
        if i > partition_start_index and current_indent <= indent_level and line.strip() != "":
            break
        partition_block.append(line)

    new_partitions = []
    for i in range(len(year_ranges) - 1):
        start = year_ranges[i]
        end = year_ranges[i + 1]
        new_block = []
        for line in partition_block:
            modified_line = line
            if line.strip().startswith("partition"):
                modified_line = f"{' ' * indent_level}partition FactInternetSales{start}_{end} = m\n"
            # Reemplazar cualquier aparición de los literales
            modified_line = modified_line.replace("RangeStartInt", str(start))
            modified_line = modified_line.replace("RangeEndInt", str(end))
            new_block.append(modified_line)
        new_partitions.extend(new_block)
        new_partitions.append("\n")

    modified_lines = lines[:partition_start_index] + new_partitions

    output_filename = f"modified_{filename}"
    with open(output_filename, 'w', encoding='utf-8') as f:
        f.writelines(modified_lines)

    print(f"Archivo modificado guardado como: {output_filename}")

def main():
    parser = argparse.ArgumentParser(description="Modificar archivo .tmdl con nuevas particiones por rangos de años.")
    parser.add_argument("filename", help="Nombre del archivo .tmdl")
    parser.add_argument("years", help="Lista de años separados por comas, por ejemplo: 2000,2005,2010")

    args = parser.parse_args()
    process_tmdl_file(args.filename, args.years)

if __name__ == "__main__":
    main()
