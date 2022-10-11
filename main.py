from utils import *

def main():
    data = []
    with open('ads.csv', encoding='utf-8') as csvfile:
        reader = csv.reader(csvfile, delimiter=',')
        for row in reader:
            data.append(row)

    del data[0]

    names = [item[2] for item in data]
    authors_file_name = 'authors.csv'

    names_dict = make_dict(names, authors_file_name)

    addresses = [item[5] for item in data]
    addresses_file_name = 'addresses.csv'

    addresses_dict = make_dict(addresses, addresses_file_name)

    with open('ads_new.csv', 'w', newline='', encoding='utf-8') as csvfile_ads:
        writer = csv.writer(csvfile_ads, delimiter=',')
        for item in data:
            item[2] = names_dict[item[2]]
            item[5] = addresses_dict[item[5]]
            item[1] = item[1].replace('\n', ' ')
            item[4] = item[4].replace('\n', ' ')
            writer.writerow(item)


if __name__ == '__main__':
    main()



