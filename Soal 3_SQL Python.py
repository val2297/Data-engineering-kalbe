#melakukan import mysql connector
import mysql.connector
from mysql.connector import Error
#melakukan percobaan koneksi
conn = mysql.connector.connect(**{
    "host":"localhost",
    "user":"root",
    "database": "DB",
    "port" : 8111
})

if conn.is_connected():
    print("Koneksi ke database berhasil!")

# Membuat cursor
cursor = conn.cursor()


#deklarasi SQL Query untuk memasukkan record ke DB (karyawan)
insert_sql = ("""
    INSERT INTO karyawan (First_name,Last_name,Age,sex,income)
    Values (%s,%s,%s,%s,%s)"""
)
values=("Teuku","Zannu",23,"Laki-laki",30000000)

try:
    #Eksekusi SQL Command
    cursor.execute(insert_sql,values)

    #melakukan commit perubahan ke database
    conn.commit()

    print("Data karyawan berhasil dimasukkan ke tabel'karyawan' dan commit berhasil dilakukan")
#roll back apabila ada issue
except :
     conn.rollback()
# menutup koneksi ke server
conn.close()