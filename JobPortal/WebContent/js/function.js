/**
 * 
 */


function getjobtitle() {
	var name = document.getElementById("jtitle").value;
	var baseURL = "http://localhost:8085/JobPortal";
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.overrideMimeType("application/json");
	xmlhttp.open("GET", baseURL + "/getJobtitle?title=" + name, true);
	var text = '';
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var jobs = JSON.parse(this.responseText);
			for (let i = 0; i < jobs.title.length; i++) {
				text += '<span class = "dropdown" onclick = "setTitle('
					+ "'" + jobs.title[i] + "'" + ')">'
					+ jobs.title[i] + "</span><br>";
			}
			document.getElementById("title").innerHTML = text;
		}
	};
	xmlhttp.send();
}
function setTitle(title) {
	document.getElementById("jtitle").value = title;
	document.getElementById("title").innerHTML = '';
}

function getLocation() {
	var loc = document.getElementById("jloc").value;
	var baseURL = "http://localhost:8085/JobPortal";
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.overrideMimeType("application/json");
	xmlhttp.open("GET", baseURL + "/getLocation?location=" + loc, true);
	var text = '';
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var jobs = JSON.parse(this.responseText);
			for (let i = 0; i < jobs.location.length; i++) {
				text += '<span class = "dropdown" onclick = "setLoc 	('
					+ "'" + jobs.location[i] + "'" + ')">'
					+ jobs.location[i] + "</span><br>";
			}
			document.getElementById("location").innerHTML = text;
		}
	};
	xmlhttp.send();
}
function setLoc(location) {
	document.getElementById("jloc").value = location;
	document.getElementById("location").innerHTML = '';
}

function getCompany() {
	var loc = document.getElementById("jcompany").value;
	var baseURL = "http://localhost:8085/JobPortal";
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.overrideMimeType("application/json");
	xmlhttp.open("GET", baseURL + "/getCompanyName?company=" + loc,
			true);
	var text = '';
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var jobs = JSON.parse(this.responseText);
			for (let i = 0; i < jobs.company.length; i++) {
				text += '<span class = "dropdown" onclick = "setCompany 	('
					+ "'"
					+ jobs.company[i]
				+ "'"
				+ ')">'
				+ jobs.company[i] + "</span><br>";
			}
			document.getElementById("company").innerHTML = text;
		}
	};
	xmlhttp.send();
}
function setCompany(company) {
	document.getElementById("jcompany").value = company;
	document.getElementById("company").innerHTML = '';
}

function getSkill() {
	document.getElementById("errorskill").innerHTML = '';
	var loc = document.getElementById("jskill").value;
	var baseURL = "http://localhost:8085/JobPortal";
	var xmlhttp = new XMLHttpRequest();
	xmlhttp.overrideMimeType("application/json");
	xmlhttp.open("GET", baseURL + "/getSkill?skill=" + loc, true);
	var text = '';
	xmlhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var jobs = JSON.parse(this.responseText);
			for (let i = 0; i < jobs.jobskill.length; i++) {
				text += '<span class = "dropdown" onclick = "setSkill 	('
					+ "'"
					+ jobs.jobskill[i]
				+ "'"
				+ ')">'
				+ jobs.jobskill[i] + "</span><br>";
			}
			document.getElementById("skill").innerHTML = text;
		}
	};
	xmlhttp.send();
}
function setSkill(skill) {
	if (!document.getElementById("selectedskill").innerHTML
			.includes(skill)) {
		if(document.getElementById("selectedskill").innerHTML == ''){
			document.getElementById("selectedskill").innerHTML += '<span class = "skill" id = "'+skill+'">'
			+ skill + '<span class = "remove" onclick = "removeSkill('
			+ "'"
			+ skill
			+ "'"
			+ ')">X</span></span>';
			document.getElementById("skillvalue").value += skill;
		}
		else{

			document.getElementById("selectedskill").innerHTML += '<span class = "skill" id = "'+skill+'">'
			+ skill + '<span class = "remove" onclick = "removeSkill('
			+ "'"
			+ skill
			+ "'"
			+ ')">X</span></span>';
			document.getElementById("skillvalue").value += ','+skill;
		}

	} else {
		document.getElementById("errorskill").innerHTML = "Already selected";
	}
	document.getElementById("jskill").value = '';
	document.getElementById("skill").innerHTML = '';
}
function setvalue() {
	document.getElementById("jskill").value = document
	.getElementById("skillvalue").value;

}
function removeSkill(skill){
	var element = document.getElementById(skill);
	element.parentNode.removeChild(element);
	document.getElementById("skillvalue").value = document.getElementById("skillvalue").value.replace(skill+"," , "").replace(","+skill,"").replace(skill,"");

}
function successmessage(){
	document.getElementById("alert").style.display = "block";
}