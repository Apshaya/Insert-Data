<?php
$con = mysqli_connect("localhost","root","","abc_company");
if(!$con){
    die('could not conect'.mysql_error());
}else{
    echo 'sussesfully';
    echo nl2br("\n");



$sql = "INSERT INTO student(Po_No,Po_Date,Emp_Code,Supp_No)
VALUES
('$_POST[Po_No]',
'$_POST[Po_Date]',
'$_POST[Emp_Code]',
'$_POST[Supp_No]')";

}
if(!mysqli_query($con,$sql))
{
die('error'.mysql_error());

}else{

print"sucsesful!<br>";
}
mysqli_close($con);

?>