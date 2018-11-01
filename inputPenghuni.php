<form method="post">
  NO KTP: <input type="text" name="ktp"><br>
  Nama: <input type="text" name="nama"><br>
  Unit: <input type="text" name="unit"><br>
  <input type="submit" name="submit"><br>
</form>

<?php
  if (isset($_POST['submit'])) {
    $con = mysqli_connect('localhost','root','','pra_assesment');
    mysqli_query($con, "INSERT INTO penghuni VALUES ('".$_POST['ktp']."', '".$_POST['nama']."', '".$_POST['unit']."') ");
    header("Location:dashboard.php");
  }

?>
