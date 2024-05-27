import random
from datetime import datetime, timedelta

israeli_names = [
    "Avigail", "Binyamin", "Chaim", "Dalia", "Eliana", "Frieda", "Gavriel", "Hadar", "Itamar", "Yael",
    "Yosef", "Kfir", "Lior", "Maayan", "Nadav", "Oren", "Pnina", "Rafi", "Shira", "Tamar",
    "Uri", "Vered", "Yaakov", "Zohar", "Ari", "Barak", "Carmel", "Dov", "Eitan", "Galit",
    "Hila", "Idan", "Keren", "Lavi", "Matan", "Nava", "Ofra", "Ronen", "Shlomo", "Tal",
    "Uzi", "Yaron", "Zeev", "Avner", "Bracha", "Chana", "Daniel", "Eliezer", "Gila", "Hadar",
    "Ilan", "Yaffa", "Moshe", "Koby", "Leah", "Maya", "Natan", "Orna", "Rivka", "Shimon",
    "Talia", "Uziel", "Yehuda", "Zvika", "Amir", "Batya", "Chava", "David", "Eli", "Gideon",
    "Hodaya", "Irit", "Kochav", "Liora", "Meir", "Nechama", "Omer", "Rina", "Sara", "Tzvi",
    "Udi", "Yishai", "Zohara", "Asher", "Batsheva", "Chaya", "Dina", "Elisha", "Geula", "Hillel",
    "Israel", "Yaara", "Malka", "Keren", "Liel", "Michal", "Noa", "Orit", "Rachel", "Shoshana",
    "Tzachi", "Uriah", "Yosefa", "Ziva", "Avital", "Boaz", "Chagit", "Doron", "Erez", "Gavriella",
    "Haim", "Ilana", "Yael", "Merav", "Kfir", "Liora", "Micha", "Nava", "Ophir", "Rinat",
    "Shani", "Tzofia", "Uziel", "Yossi", "Zelda", "Adina", "Benny", "Chana", "Dor", "Eliav",
    "Galia", "Hod", "Itai", "Yardena", "Mordechai", "Koren", "Lihi", "Mor", "Noy", "Orly",
    "Reut", "Shmuel", "Tzila", "Uriya", "Yotam", "Zehava", "Avraham", "Bracha", "Chaim", "Efrat",
    "Eliyahu", "Geula", "Herzl", "Ilay", "Yehudit", "Menahem", "Kedem", "Lily", "Mirit", "Nir",
    "Oz", "Raz", "Sharon", "Tzipora", "Uziel", "Yoni", "Zalman", "Ayala", "Boaz", "Chaim",
    "Eden", "Elad", "Gali", "Hagar", "Idan", "Yamit", "Menucha", "Karin", "Levi", "Mika",
    "Noam", "Odelia", "Rafi", "Shira", "Tzvia", "Uzi", "Yigal", "Ziv"
]
city = [
    "Tel Aviv", "Jerusalem", "Haifa", "Rishon LeZion", "Petah Tikva", "Ashdod", "Netanya", 
    "Beer Sheva", "Holon", "Bnei Brak", "Rehovot", "Bat Yam", "Ramat Gan", "Ashkelon", 
    "Herzliya", "Kfar Saba", "Hadera", "Modiin", "Raanana", "Kiryat Ata", "Ramat HaSharon", 
    "Beit Shemesh", "Lod", "Nahariya", "Ramla", "Hod HaSharon", "Givatayim", "Kiryat Gat", 
    "Eilat", "Kiryat Bialik", "Afula", "Ra'anana", "Ness Ziona", "Karmiel", "Akko", 
    "Kiryat Yam", "Yavne", "Or Yehuda", "Tiberias", "Ma'ale Adumim", "Yehud", "Arad", 
    "Dimona", "Nof HaGalil", "Tirat Carmel", "Sderot", "Qiryat Shemona", "Migdal HaEmek", 
    "Netivot", "Tamra", "Rosh HaAyin", "Sakhnin", "Umm al-Fahm", "Kiryat Malakhi", "Yokneam", 
    "Ness Ziona", "Giv'at Shmuel", "Kiryat Shmona", "Mevasseret Zion", "Beersheba", 
    "Petach Tikvah", "Rehovot", "Kiryat Ono", "Kfar Yona", "Kfar Saba", "Beit Shean", 
    "Hatzor HaGlilit", "Giv'atayim", "Yehud-Monosson", "Beit Dagan", "Bnei Ayish", 
    "Gan Yavne", "Gedera", "Givat Ze'ev", "Or Akiva", "Zichron Yaakov", "Harish", 
    "Mazkeret Batya", "Shoham", "Tzur Hadassah", "Elyakhin", "Azor", "Kfar Saba", 
]


def random_name():
    return random.choice(israeli_names)


def generate_data(num_records):
    """Generate Staff data"""
    sql_statements = []
    
    for i in range(1000, num_records + 1001):
        oName = random_name()
        oId = i
        oAddr = random.choice(city)
        oNum = ''.join(random.choice(['054', '053', '03', '077', '052']) + str(random.randint(1000000, 9999999)))
        
        sql = f"'{oName}', {oId}, '{oAddr}', {oNum}"
        sql_statements.append(sql)
    return sql_statements


'''
  ownerName VARCHAR(15) NOT NULL,
  ownerID INT NOT NULL,
  ownerAddress VARCHAR(15) NOT NULL,
  ownerPhoneNumber INT NOT NULL,
  PRIMARY KEY (ownerID)
'''

# Generate 400 Staff records
num_records = 400
data = generate_data(num_records)

# Write to a file
with open('petOwner_data.txt', 'w') as f:
    print(len(data))
    for line in data:
        f.write(line + '\n')

print(f"Generated {num_records} INSERT statements for petOwner table.")
