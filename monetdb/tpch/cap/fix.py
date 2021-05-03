from os import listdir
from os.path import isfile, join
import subprocess
import re


def make_var(i):
    return "VAR" + str(i)


path = "."
monetdbcmd = ["mclient", "gpromtest", "-f", "csv", "-s"]
files = [f for f in listdir(path) if isfile(
    join(path, f)) and f.endswith(".sql") and not f.startswith("fixed")]

for f in files:
    outf = "fixed_" + f
    print("TRANSLATING " + f + " into " + outf)
    with open(f, 'r') as thefile:
        lines = thefile.readlines()
        nocomment = [l for l in lines if not l.lstrip().startswith('--')]
        data = "".join(lines)
        rangesqs = [r.group() for r in re.finditer(
            "\((SELECT bounds_to_blob[^g]+g\(b\))\)", data, re.DOTALL)]
        print("NUM RANGES: ", len(rangesqs))
        newdata = data
        var = 1
        for r in rangesqs:
            newdata = newdata.replace(r, make_var(var))
            var += 1
        # print(newdata)
        var = 1
        for r in rangesqs:
            cmd = monetdbcmd.copy()
            cmd.append(r + ";")
            # print("CMD", cmd)
            result = subprocess.run(cmd, stdout=subprocess.PIPE)
            if result.returncode == 0:
                blob = "blob '" + result.stdout.decode() + "'"
                blob = blob.replace("\n'", "'")
                # print(blob)
                newdata = newdata.replace(make_var(var), blob)
            else:
                print("FILE " + f + " FAILED!!!!")
            var += 1
        thefile.close()
    # print(newdata)
    with open(outf, 'w') as outfile:
        outfile.write(newdata)
        outfile.flush()
        outfile.close()
