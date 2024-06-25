<?PHP
include_once("connection.php");

$myArray = array();
$table = "tbl_product";

if ($result = $conn->query("SELECT * FROM $table")) {
    while ($row = $result->fetch_array(MYSQLI_ASSOC)) {
        $myArray[] = $row;
    }
    // print_r($myArray);
    // echo json_encode($myArray);
    echo json_encode(array("results" => $myArray));
}
$result->close();
$conn->close();
?>