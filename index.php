<form method="post">
  NIP: <input type="text" name="nip" ><br>
  Nama: <input type="text" name="nama" ><br>
  <input type="submit" name="submit" ><br>
</form>

<?php
  if (isset($_POST['submit'])) {
    $nama = $_POST['nama'];
    $nip = $_POST['nip'];
    $con = mysqli_connect('localhost','root','','pra_assesment');

    $login = mysqli_query($con,"SELECT * FROM karyawan WHERE nama = '$nama' && NIP = '$nip' ");
    while ($row=mysqli_fetch_array($login)) {
      session_start();
      $_SESSION['nip'] = $nip;
      $_SESSION['nama'] = $nama;
      header("Location:dashboard.php");
    }
    echo "Nama / NIP salah";
  }
?>
