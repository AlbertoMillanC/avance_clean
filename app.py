import random
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    numero_aleatorio = random.randint(1, 100) # Genera un número entre 1 y 100
    return render_template('index.html', numero=numero_aleatorio)

if __name__ == '__main__':
    app.run(debug=True) 