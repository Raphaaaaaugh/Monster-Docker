from flask import Flask, render_template, url_for, jsonify
import mysql.connector


app = Flask(__name__, static_url_path='/static')
    

def monster_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'monsters'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT * FROM monster_data')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


def lore_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'monsters'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT Story, Content FROM lore')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


def hunter_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'monsters'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT * FROM hunter')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


def weapon_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'monsters'
    }
    weapons = []
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=1')
    greatswords = cursor.fetchall()
    weapons.append(greatswords)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=2')
    katanas = cursor.fetchall()
    weapons.append(katanas)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=3')
    dswords = cursor.fetchall()
    weapons.append(dswords)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=4')
    sns = cursor.fetchall()
    weapons.append(sns)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=5')
    lances = cursor.fetchall()
    weapons.append(lances)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=6')
    gunlances = cursor.fetchall()
    weapons.append(gunlances)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=7')
    hammers = cursor.fetchall()
    weapons.append(hammers)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=8')
    has = cursor.fetchall()
    weapons.append(has)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=9')
    swaxes = cursor.fetchall()
    weapons.append(swaxes)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=10')
    chaxes = cursor.fetchall()
    weapons.append(chaxes)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=11')
    glaives = cursor.fetchall()
    weapons.append(glaives)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=12')
    lbows = cursor.fetchall()
    weapons.append(lbows)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=13')
    hbows = cursor.fetchall()
    weapons.append(hbows)
    cursor.execute('SELECT * FROM weapon WHERE Weapon_Type=14')
    bows = cursor.fetchall()
    bows.append(bows)
    cursor.close()
    connection.close()
    return weapons


@app.route('/')
def index():
    monsters = monster_data()
    lores = lore_data()
    return render_template('index.html', monsters=monsters, lores=lores)


@app.route('/return_to_menu', methods=['POST'])
def menu():
    monsters = monster_data()
    lores = lore_data()
    return render_template('index.html', monsters=monsters, lores=lores)


@app.route('/go_to_monsters', methods=['POST'])
def goToMonsters():
    monsters = monster_data()
    return render_template('monsters.html', monsters=monsters)


@app.route('/go_to_lore', methods=['POST'])
def goTolore():
    lores = lore_data()
    return render_template('lore.html', lores=lores)


@app.route('/go_to_weapons', methods=['POST'])
def goToWeapons():
    weapons = weapon_data()
    return render_template('weapons.html', greatswords=weapons[0], katanas=weapons[1], dualswords=weapons[2], swords=weapons[3], lances=weapons[4], gunlances=weapons[5], hammers=weapons[6], horns=weapons[7], swaxes=weapons[8], chaxes=weapons[9], glaives=weapons[10], lbgs=weapons[11], hbgs=weapons[12])


@app.route('/go_to_hunters', methods=['POST'])
def goToHunters():
    hunters = hunter_data()
    return render_template('hunters.html', hunters=hunters)



if __name__ == '__main__':
    app.run(host='0.0.0.0')