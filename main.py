import csv

data = []
with open('ads.csv', encoding='utf-8') as csvfile:
    reader = csv.reader(csvfile, delimiter=',')
    for row in reader:
        data.append(row)

del data[0]
names = []
for item in data:
    names.append(item[2])

unique_names = list(set(names))

names_dict = {}
id_n = 0
for name in unique_names:
    names_dict[name] = id_n
    id_n += 1

with open('authors.csv', 'w', newline='', encoding='utf-8') as csvfile_n:
    writer = csv.writer(csvfile_n, delimiter=',')
    for k, v in names_dict.items():
        d_l_a = [v, k]
        writer.writerow(d_l_a)

addresses = []
for item in data:
    addresses.append(item[5])

unique_addresses = list(set(addresses))

addresses_dict = {}
id_a = 0
for addr in unique_addresses:
    addresses_dict[addr] = id_a
    id_a += 1

print(addresses_dict)
with open('addresses.csv', 'w', newline='', encoding='utf-8') as csvfile_a:
    writer = csv.writer(csvfile_a, delimiter=',')
    for k, v in addresses_dict.items():
        d_l_ad = [v, k]
        writer.writerow(d_l_ad)

with open('ads_new.csv', 'w', encoding='utf-8') as csvfile_ads:
    writer = csv.writer(csvfile_ads, delimiter=',')
    for item in data:
        item[2] = names_dict[item[2]]
        item[5] = addresses_dict[item[5]]
        item[1] = item[1].replace('\n', ' ')
        item[4] = item[4].replace('\n', ' ')
        writer.writerow(item)



