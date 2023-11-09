#Python3

rev = []

with open('/data/id_rsa', 'r') as id:
    for line in id:
        rev_text = line [::-1]
        rev.append(rev_text)
    id.close()

file = open('asr_di', 'w')

for i in rev:
    file.write(i)
file.close()
