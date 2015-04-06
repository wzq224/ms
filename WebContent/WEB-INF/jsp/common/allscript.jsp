<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="../css/bootstrap.css" rel="stylesheet">
<link href="../css/site.css" rel="stylesheet">
<link href="../css/bootstrap-responsive.css" rel="stylesheet">
<script src="../js/jquery.js"></script>
<script src="../js/jquery.flot.js"></script>
<script src="../js/jquery.flot.resize.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script src="../js/jquery.cookie.js"></script>
<script src="../js/ckeditor/ckeditor.js"></script>
<script>
function checkLogin(){
	if(!$.cookie("uid")){
		location.href = "/ms2/user/";
	}
}

</script>