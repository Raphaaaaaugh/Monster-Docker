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


def weapon_data():
    config = {
        'user': 'root',
        'password': 'root',
        'host': 'db',
        'port': '3306',
        'database': 'monsters'
    }
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute('SELECT * FROM weapon')
    results = cursor.fetchall()
    cursor.close()
    connection.close()
    return results


@app.route('/')
def index():
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
    return render_template('weapons.html', weapons=weapons)



if __name__ == '__main__':
    app.run(host='0.0.0.0')