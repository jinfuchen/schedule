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
    <form id="issue" action="issue" method="post">
    <fieldset>
        <legend>PROVIDE INFORMATION</legend>
        <div class="form-row">
            <div class="field-label"><label for="field1">Gender</label>:</div>
            <div class="field-widget">
                <select id="gender" name="gender" class="validate-selection" title="Choose Gender">
                    <option>Select one...</option>
                    <option>male</option>
                    <option>female</option>
                </select>
            </div>
        </div>
        <div class="form-row">
            <div class="field-label"><label for="field2">Language</label>:</div>
            <div class="field-widget">
                <select id="language" name="language" class="validate-selection" title="Choose Language">
                    <option>Select one...</option>
                    <option>English</option>
                    <option>French</option>
                    <option>Chinese</option>
                </select>
            </div>
        </div>
    </fieldset>
    <fieldset>
        <legend>PROVIDE SERVICE</legend>
         <fieldset>
                <legend class="optional">Select Service</legend>
                <label class="left">
                <input type="checkbox" class="radio_input" name="service" id="field11-male" value="cold" />cold <br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="fever"/>fever<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="cough"/>cough<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="headache"/>headache<br />    
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="cancer"/>cancer<br />
               
                </label>
                <label class="left">
                 <input type="checkbox" class="radio_input" name="service" id="field11-female" value="flu"/>flu<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service5<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service6<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service7<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service8
                </label>
                <label class="left">
                 <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service
                </label>
                <label class="left">
                 <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service<br />
                <input type="checkbox" class="radio_input" name="service" id="field11-female" value="Service1"/>Service
                </label>
            </fieldset> 
           
       <div class="form-row">
            <div class="field-label"><label for="field9">Other Service</label>:</div>
            <div class="field-label">
                <input name="field3" id="field9" class="optional" title="Enter other service you want" />		
            </div>
        </div>
    </fieldset>  
    <fieldset>
        <legend class="optional">PROVIDE TIME INFORMATIONS</legend>
        <div class="form-row">
            <div class="field-label"><label for="field1">City</label>:</div>
            <div class="field-widget">
                <select id="city" name="city" class="validate-selection" title="Choose City">
                    <option>Select one...</option>
                    <option>montreal</option>
                    <option>vancouver</option>
                    <option>toronto</option>
                    <option>beijing</option>
                </select>
            </div>
        </div>

        <div class="form-row">
            <legend class="optional">Select TIME</legend>
            <label class="left">
            <input type="checkbox" class="radio_input" name="timesection" id="field11-male" value="1" />9-10 AM <br />
            <input type="checkbox" class="radio_input" name="timesection" id="field11-female" value="2"/>10-11 AM<br />
            </label>
            <label class="left">
            <input type="checkbox" class="radio_input" name="timesection" id="field11-male" value="3" />11-12 AM <br />
            <input type="checkbox" class="radio_input" name="timesection" id="field11-female" value="4"/>2-3 PM<br />
            </label>
            <label class="left">
            <input type="checkbox" class="radio_input" name="timesection" id="field11-male" value="5" />3-4 PM <br />
            <input type="checkbox" class="radio_input" name="timesection" id="field11-female" value="6"/>4-5 PM<br />
            </label>
        </div>
    </fieldset>
    <input type="submit" class="submit" value="Submit" /> <input class="reset" type="button" value="Reset" onclick="valid.reset(); return false" />
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