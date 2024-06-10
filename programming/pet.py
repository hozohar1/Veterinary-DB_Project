import random
from datetime import datetime, timedelta

pet_names = [
    "Bella", "Max", "Charlie", "Luna", "Lucy", "Milo", "Lola", "Rocky", "Zoe", "Daisy", 
    "Buddy", "Molly", "Oliver", "Chloe", "Bailey", "Sophie", "Coco", "Riley", "Oscar", 
    "Ruby", "Toby", "Sadie", "Jack", "Maggie", "Simba", "Lily", "Leo", "Nala", "Marley", 
    "Rosie", "Buster", "Duke", "Mia", "Penny", "Zeus", "Finn", "Koda", "Loki", "Layla", 
    "Dexter", "Sasha", "Bear", "Hazel", "Winnie", "Bruno", "Ace", "Ginger", "Oreo", 
    "Gizmo", "Sammy", "Bentley", "Cleo", "Tank", "Holly", "Shadow", "Athena", "Blue", 
    "Rex", "Frankie", "Pepper", "Henry", "Ellie", "Benny", "Izzy", "Roxy", "Scout", 
    "Louie", "Tucker", "Maddie", "Harley", "Moose", "Remy", "Willow", "Lucky", "Ranger", 
    "Emma", "Diesel", "Abby", "Kona", "George", "Sadie", "Gus", "Boomer", "Belle", 
    "Piper", "Milo", "Poppy", "Chance", "Cooper", "Kiki", "Hank", "Ruby", "Buddy", 
    "Finn", "Otis", "Paisley", "Rocky"
]

pet_species = [
    "Dog", "Cat", "Bird", "Rabbit", "Hamster", "Guinea Pig", "Fish", "Turtle", "Lizard", 
    "Snake", "Frog", "Ferret", "Hedgehog", "Parrot", "Canary", "Gerbil", "Chinchilla", 
    "Mouse", "Rat", "Tortoise", "Gecko", "Iguana", "Budgie", "Finch", "Salamander", 
    "Axolotl", "Newt", "Hermit Crab", "Sugar Glider", "Skink", "Tarantula", "Scorpion", 
    "Degu", "Lovebird", "Cockatiel", "Quail", "Pigeon", "Mynah", "Cichlid", "Betta"
]



def random_name():
    return random.choice(pet_names)


def generate_data(num_records):
    sql_statements = []
    
    for i in range(1, num_records + 1):
        n = random_name()
        species = random.choice(pet_species)
        sBirthDate = random.randint(2000, 2024)
        g = random.choice(["M", "F"])
        id = i
        owner = random.randint(1000, 1000+i)
        
        sql = f"INSERT INTO Pet (petName, petSpecies, petBirthYear, petGender, petId, ownerID) VALUES ('{n}', '{species}', {sBirthDate}, '{g}', {id}, {owner});"
        sql_statements.append(sql)
    return sql_statements


# Generate 400 pet records
num_records = 400
data = generate_data(num_records)

# Write to a file
with open('pet_data.sql', 'w') as f:
    print(len(data))
    for line in data:
        f.write(line + '\n')

print(f"Generated {num_records} INSERT statements for pet table.")
