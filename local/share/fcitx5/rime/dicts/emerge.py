import os
import math


def read_file(file_path):
    with open(file_path, "r") as file:
        for line in file.readlines():
            line = line.strip()
            if line.startswith("#"):
                continue
            if "\t" not in line:
                continue
            item = line.split("\t")
            if len(item) == 2:
                yield (item[0], item[1], "0")
            else:
                yield (item[0], item[1], item[2])


def main():
    dicts_items = {}
    for file in os.listdir("./"):
        if str(file).endswith("yaml"):
            for ln in read_file(file):
                k = "\t".join([ln[0], ln[1]])
                v = ln[2]

                if "%" in v:
                    v = 100 * float(v[:-1])
                else:
                    v = float(v)

                if k in dicts_items.keys():
                    dicts_items[k] += int(v)
                else:
                    dicts_items[k] = int(v)
    with open("emerged.dict.yaml", "w") as f:
        for k, v in dicts_items.items():
            v = math.log(v + 1)
            f.write("\t".join([k, str(int(v))]) + "\n")


if __name__ == "__main__":
    main()
