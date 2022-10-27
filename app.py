from flask import Flask, render_template, request,redirect, url_for, flash
from flask_mysqldb import MySQL
app = Flask(__name__)
#conectar a la Base de Datos
app.config['MYSQL_HOST'] ='localhost'
app.config['MYSQL_USER'] ='admin' #susario
app.config['MYSQL_PASSWORD'] ='root' #contraseña
app.config['MYSQL_DB'] ='ifts16-spsa-tpif-flask' #nombre BD
mysql= MySQL(app)

#settings
app.secret_key ='mysecretkey'



@app.route('/')
def index():
    return render_template('index.html') 

#rutas del CRUD(MABM) usuario
@app.route('/administrador')
def muestra_usuario():
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM `usuario`')
    data = cur.fetchall()
    return render_template('/Administrador/listadoUsuario.html', usuarios = data)

@app.route('/usuario/registro')
def registro_usuario():
    return render_template('/Usuario/Registro/registro.html')


@app.route('/usuario/registro', methods = ['POST'])
def alta_usuario():
    if request.method == 'POST':
        nombre = request.form['nombre']
        apellido = request.form['apellido']
        dni = request.form['dni']
        direccion = request.form['direccion']
        email = request.form['email']
        usuario = request.form['usuario']
        contrasenia = request.form['contrasenia']
        cur = mysql.connection.cursor()
        cur.execute('INSERT INTO `usuario` (`nombre`, `apellido`, `dni`, `direccion`, `ususario`, `contrasenia`, `email`) VALUES (%s, %s, %s, %s, %s, %s, %s)', (nombre, apellido, dni, direccion, usuario, contrasenia, email))
        mysql.connection.commit()
        flash('Usario creado, ya puede ingresar')
        return redirect(url_for('index'))




@app.route('/usuario/borrar/<string:id>')
def borrar_usuario(id):
    cur = mysql.connection.cursor()
    cur.execute('DELETE FROM `usuario` WHERE id_usuario = {0}'.format(id))
    mysql.connection.commit()
    flash('Se borro el Usuario')
    return redirect(url_for('muestra_usuario'))



@app.route('/administrador/editar-usuario/<id>')
def editar_usuario(id):
    cur = mysql.connection.cursor()
    cur.execute('SELECT * FROM usuario WHERE id_usuario = %s', (id))
    data = cur.fetchall()
    return render_template('administrador/editarUsuario.html', usuario=data[0])

if __name__ == '__main__':
    app.run(port = 3000, debug = True)

