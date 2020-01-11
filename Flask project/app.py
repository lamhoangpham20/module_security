from flask import Flask, render_template, url_for, request   
import subprocess

app = Flask(__name__)

@app.route('/', methods = ['POST', 'GET'])
def index():
    if request.method == 'POST':
        username = request.form['username']
        password = request.form['password']
        if username == "lam" and password == "pham":
            ip = request.environ.get('HTTP_X_FORWARDED_FOR')
            subprocess.run(["/var/www/html/admin/apache.sh", ip], shell=True)
        else: 
            return "wrong number"
    else:
        return render_template('login.html')

if __name__ == "__main__":
    app.run(debug=True)