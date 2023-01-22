import os

PATH = '/tmp/'

def get_info_pd_raid():

    #запишем инфу в файл
    os.system(f'hpacucli ctrl slot=0 ld all show > {PATH}hpacucli-ld')

    #читаем файл
    with open(f'{PATH}hpacucli-ld', 'r') as file:
        array = file.readlines()

    for line in array:
        if len(line) < 20:
            continue
        else:
            print(line.strip())

if __name__ == '__main__':
    get_info_pd_raid()