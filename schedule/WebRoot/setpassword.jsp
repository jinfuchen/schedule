<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script src="ls/prototype.js" type="text/javascript"></script>
<script src="js/effects.js" type="text/javascript"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript">
//<![CDATA[
<!--
// Alternative Style: Working With Alternate Style Sheets
// http://www.alistapart.com/articles/alternate/
function setActiveStyleSheet(title) {
var i, a, main;
for(i=0; (a = document.getElementsByTagName("link")[i]); i++) {
if(a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) {
a.disabled = true;
if(a.getAttribute("title") == title) a.disabled = false;
}
}
}
//-->
//]]>
</script>
<link title="style1" rel="stylesheet" href="style/search.css" type="text/css" />
</head>
<body>
	<div class="form_content">
    <form id="register" action="register" method="post">
    <fieldset>
        <legend>SETUP PASSWORD</legend>
         <div class="form-row">
            <div class="field-label"><label for="field9">UserName</label>:</div>
            <div class="field-label">
                <input name="username" id="usernmae" class="optional" title="Enter your username please" />		
            </div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field9">Original Password</label>:</div>
            <div class="field-label">
                <input name="ordpassword" id="ordpassword" type="password" class="optional" title="Enter your password please" />		
            </div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field9">New PassWord</label>:</div>
            <div class="field-label">
                <input name="newpassword" id="newpassword" type="password" class="optional" title="Enter your password please" />		
            </div>
        </div>
		    <div class="form-row">
            <div class="field-label"><label for="field9">Sure PassWord</label>:</div>
            <div class="field-label">
                <input name="surepassword" id="surepassword" type="password" class="optional" title="Enter your password please" />		
            </div>
        </div>
    </fieldset>

    <input type="submit" class="submit" value="Setup" />
    </form>
    </div>
    <script type="text/javascript">
        function formCallback(result, form) {
            window.status = "valiation callback for form '" + form.id + "': result = " + result;
        }
        
        var valid = new Validation('test', {immediate : true, onFormValidate : formCallback});
        Validation.addAllThese([
            ['validate-password', '> 6 characters', {
                minLength : 7,
                notOneOf : ['password','PASSWORD','1234567','0123456'],
                notEqualToField : 'field1'
            }],
            ['validate-password-confirm', 'please try again.', {
                equalToField : 'field8'
            }]
        ]);
    </script>

</body>
</html>