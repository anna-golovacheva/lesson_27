import csv

def make_dict(items_list, file_name):
    """
    Создаёт список уникальных значений (авторов или адресов), записывает их
    в словарь со значением id и в csv файл.
    Возвращает словарь, в котором значениями являются id.
    """
    unique_items = list(set(items_list))
    items_dict = {name: i + 1 for i, name in enumerate(unique_items)}

    with open(file_name, 'w', newline='', encoding='utf-8') as csvfile_items:
        writer = csv.writer(csvfile_items, delimiter=',')
        for k, v in items_dict.items():
            from_dict_to_list = [v, k]
            writer.writerow(from_dict_to_list)

    return items_dict