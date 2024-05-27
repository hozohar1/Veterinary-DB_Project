import random
from datetime import datetime, timedelta

israeli_names = [
    "Avigail", "Binyamin", "Chaim", "Dalia", "Eliana", "Frieda", "Gavriel", "Hadar", "Itamar", "Yael",
    "Yosef", "Kfir", "Lior", "Maayan", "Nadav", "Oren", "Pnina", "Rafi", "Shira", "Tamar",
    "Uri", "Vered", "Yaakov", "Zohar", "Ari", "Barak", "Carmel", "Dov", "Eitan", "Galit",
    "Hila", "Idan", "Keren", "Lavi", "Matan", "Nava", "Ofra", "Ronen", "Shlomo", "Tal",
    "Uzi", "Yaron", "Zev", "Avner", "Bracha", "Chana", "Daniel", "Eliezer", "Gila", "Hadar",
    "Ilan", "Yaffa", "Moshe", "Koby", "Leah", "Maya", "Natan", "Orna", "Rivka", "Shimon",
    "Talia", "Uziel", "Yehuda", "Ziva", "Amir", "Batya", "Chava", "David", "Eli", "Gideon",
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

def random_name():
    return random.choice(israeli_names)

def random_date(start, end):
    """Generate a random date between `start` and `end`"""
    return start + timedelta(days=random.randint(0, (end - start).days))

def generate_staff_data(num_records):
    """Generate Staff data"""
    sql_statements = []
    start_date = datetime.strptime('1950-01-01', '%Y-%m-%d')
    end_date = datetime.strptime('2000-01-01', '%Y-%m-%d')
    
    for i in range(1, num_records + 1):
        sName = random_name()
        sID = i
        sBirthDate = random_date(start_date, end_date).strftime('%Y-%m-%d')
        
        sql = f"INSERT INTO Staff (sName, sID, sBirthDate) VALUES ('{sName}', {sID}, TO_DATE('{sBirthDate}', 'YYYY-MM-DD'));"
        sql_statements.append(sql)
    return sql_statements

# Generate 400 Staff records
num_records = 400
staff_data = generate_staff_data(num_records)

# Write to a file
with open('staff_data.sql', 'w') as f:
    for line in staff_data:
        f.write(line + '\n')

print(f"Generated {num_records} INSERT statements for Staff table.")
