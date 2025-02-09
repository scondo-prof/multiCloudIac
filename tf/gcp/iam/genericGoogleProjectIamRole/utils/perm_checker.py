

def main(perms_file: str) -> list[str]:
    with open(perms_file, "r") as file:
        perms = []
        for line in file:
            perm = line.replace("\n", "")
            if not perm in perms:
                perms.append(perm)
        print(perms)
        print(len(perms))

main("perm_file.txt")