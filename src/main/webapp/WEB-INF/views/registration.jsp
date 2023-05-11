<!doctype html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">



<title>Registration</title>
</head>
<body>

	<div class="container">
		<div class="card mx-auto mt-5 mb-5" style="width: 500px;"">
			<div class="card-body">
				<h3 class="text-center text-black"
					style="text-transform: uppercase;">Registration</h3>
				<div class="alert alert-danger" role="alert">
					<form:errors path="student.*" />
				</div>
				<form action="registrationHandler" method="post" class="mt-4">
					<div class="form-group">
						<label>Your Name :</label> <input type="text" class="form-control"
							id="formGroupInputName" placeholder="Enter Your Name "
							name="name">
					</div>
					<div class="form-group">
						<label>Your ID :</label> <input type="text" class="form-control"
							id="formGroupInputID" placeholder="Enter Your ID " name="id">
					</div>
					<div class="form-group">
						<label>Enter Date :</label> <input type="date"
							class="form-control" id="formGroupInputDate"
							placeholder="DD/MM/YYYY" name="date">
					</div>
					<div class="form-group">
						<label>Select Course select</label> <select multiple
							class="form-control" id="formGroupSelectCourse" name="courses">
							<option>Java</option>
							<option>Python</option>
							<option>c++</option>
							<option>Android</option>
							<option>PHP</option>
						</select>
					</div>
					<div class="form-group">
						<label>Select Gender :</label>
						<div class="form-check form-check-inline ml-5">
							<input class="form-check-input" type="radio" name="gender"
								id="radioMale" value="Male"> <label
								class="form-check-label">Male</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender"
								id="radioFemale" value="Female"> <label
								class="form-check-label">Female</label>
						</div>
					</div>
					<div class="form-group">
						<label>select Student Type</label> <select class="form-control"
							name="StudentType" id="formControlSelectStudentType"
							name="studentType">
							<option>Normal Student</option>
							<option>Old Student</option>
						</select>
					</div>
					<div class="form-row">
						<div class="form-group col-md-6">
							<label>Enter Street :</label> <input type="text"
								class="form-control" id="inputstret" name="address.street">
						</div>
						<div class="form-group col-md-6">
							<label>Enter City :</label> <select id="inputCity"
								class="form-control" name="address.city">
								<option value="Surat">Surat</option>
								<option value="Navsari">Navsari</option>
							</select>
						</div>

					</div>

					<div class="container text-center">
						<button class="btn btn-outline Light">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
		integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
		crossorigin="anonymous">

</body>
</html>