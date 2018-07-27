/*
 *  Document   : formsValidation.js
 *  Author     : pixelcave
 */
var FormsValidation = function() {
	return {
		init : function() {
					$("#form-validation")
							.validate(
									{
										errorClass : "help-block animation-slideDown",
										errorElement : "div",
										errorPlacement : function(e, a) {
											a.parents(".form-group > div")
													.append(e)
										},
										highlight : function(e) {
													$(e)
															.closest(
																	".form-group")
															.removeClass(
																	"has-success has-error")
															.addClass(
																	"has-error"),
													$(e).closest(".help-block")
															.remove()
										},
										success : function(e) {
													e
															.closest(
																	".form-group")
															.removeClass(
																	"has-success has-error"),
													e.closest(".help-block")
															.remove()
										},
										rules : {
											val_statename1 : {
												required : !0,
											},
											val_statename : {
												required : !0,
											},
											val_cityname : {
												required : !0,
											},
											val_areaname : {
												required : !0,
												
											},
											val_2capacity : {
												required : !0,
												
											},
											val_4capacity : {
												required : !0,
												
											},
											val_parkinglotname : {
												required : !0,
												
											},
											val_address : {
												required : !0,
												
											},
											val_cpname : {
												required : !0,
											},
											val_longitude : {
												required : !0,
												
											},
											val_latitude : {
												required : !0,
												
											},
											
											val_aname : {
												required : !0,
												
											},
											val_cname : {
												required : !0,
												
											},
											val_sname : {
												required : !0,
												
											},
											val_plotname2: {
												required : !0,
												
											},
											val_package_name : {
												required : !0,
												
											},
											val_vehicletype : {
												required : !0,
												
											},
										
											val_username : {
												required : !0,
												
											},
											val_email : {
												required : !0,
												email : !0
											},
											val_password : {
												required : !0,
												minlength : 5
											},
											val_confirm_password : {
												required : !0,
												equalTo : "#val_password"
											},
											val_bio : {
												required : !0,
												
											},
											val_skill : {
												required : !0
											},
											val_website : {
												required : !0,
												url : !0
											},
											val_digits : {
												required : !0,
												digits : !0
											},
											val_number : {
												required : !0,
												
											},
											val_range : {
												required : !0,
												range : [ 1, 1e3 ]
											},
											val_terms : {
												required : !0
											},
											val_photo_name : {
												required : !0
											},
											val_parkinglot : {
												required : !0
											},
											val_photo_upload : {
												required : !0
											},
											val_photo_description : {
												required : !0
											},
											val_question : {
												required : !0
											},
											val_answer : {
												required : !0
											},
											val_package_name : {
												required : !0
											},
											val_package_description : {
												required : !0
											},
											val_package_price : {
												required : !0
											},
											val_package_duration : {
												required : !0
											},
											val_package_hour : {
												required : !0
											},
											val_package_charge : {
												required : !0
											},
											val_contactpersonname : {
												required : !0
											},
											val_contactnumber : {
												required : !0,
												minlength : 10
											},
											val_description : {
												required : !0,
											},
											val_2price : {
												required : !0,
											},
											val_4price : {
												required : !0,
											},
											val_category : {
												required : !0,
											},	 
											val_question : {
												required : !0,
											},
											val_answer : {
												required : !0,
											},
										},
										messages : {
											val_question : {
												required : "Please Enter Question",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_answer : {
												required : "Please Enter Answer",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_category : {
												required : "Please Enter Category",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_4price : {
												required : "Please Enter Four Wheeler Price",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_2price : {
												required : "Please Enter Two Wheeler Price",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_description : {
												required : "Please Enter Description",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_contactnumber : {
												required : "Please Enter Contact Number",
												minlength : "Your username must consist of at least 10 digits"
											},
											val_contactpersonname : {
												required : "Please Enter name of the Contact Person",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_package_charge : {
												required : "Please enter a Charge Per Hour",
												
											},
											val_package_hour : {
												required : "Please enter a Number of Hours",
												
											},
											val_statename : {
												required : "Please enter a State Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_statename1 : {
												required : "Please Choose a State Name",	
											},
											val_cityname : {
												required : "Please enter a City Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_areaname : {
												required : "Please enter a Area Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_sname : {
												required : "Please Choose State Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_cname : {
												required : "Please Choose City Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_package_description: {
												required : "Please enter a Description About Package",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_parkinglotname : {
												required : "Please enter a ParkingLotName",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_2capacity : {
												required : "Please enter a Capacity for 2 wheeler",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_4capacity : {
												required : "Please enter a Capacity for 4 wheeler",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_longitude : {
												required : "Please enter Longitude value",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_latitude : {
												required : "Please enter Latitude value",
												
											},
											val_cpname : {
												required : "Please enter Contact Person Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_image : {
												required : "Please enter an Image",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_address: {
												required : "Please enter an Address",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_package_description : {
												required : "Please enter an Package Description",
												minlength : "Your package name must consist of at least 3 characters"
											},
											val_aname: {
												required : "Please Select an AreaName",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_cname: {
												required : "Please Select an CityName",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_sname: {
												required : "Please Select an StateName",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_plotname2: {
												required : "Please Select ParkingLot",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_plotname1: {
												required : "Please Select ParkingLot Name",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_username : {
												required : "Please enter a username",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_vehicletype: {
												required : "Please Select Vehicle Type",
												minlength : "Your username must consist of at least 3 characters"
											},
											val_email : "Please enter a valid email address",
											val_password : {
												required : "Please provide a password",
												minlength : "Your password must be at least 5 characters long"
											},
											val_confirm_password : {
												required : "Please provide a password",
												minlength : "Your password must be at least 5 characters long",
												equalTo : "Please enter the same password as above"
											},
											val_bio : "Don't be shy, share something with us :-)",
											val_skill : "Please select a skill!",
											val_website : "Please enter your website!",
											val_digits : "Please enter only digits!",
											val_number : "Please enter a number!",
											val_range : "Please enter a number between 1 and 1000!",
											val_terms : "You must agree to the service terms!",
											val_photo_name : "Enter Photo Name",
											val_parkinglot : "Please select the Parking lot",
											val_photo_upload : "Select a photo to upload",
											val_photo_description : "Please Enter description for the Photo",
											val_question : "Please Enter Question",
											val_answer : "Please Enter Appropriate Answer",
											val_package_name : "Please Select a Package",
											val_package_description : "Please add description for the Package",
											val_package_price : "Please Select Package Price",
											val_package_duration : "Please select duration for the Package",
											
										}
									}), $("#masked_date").mask("99/99/9999"),
					$("#masked_date2").mask("99-99-9999"), $("#masked_phone")
							.mask("(999) 999-9999"), $("#masked_phone_ext")
							.mask("(999) 999-9999? x99999"), $("#masked_taxid")
							.mask("99-9999999"), $("#masked_ssn").mask(
							"999-99-9999"), $("#masked_pkey").mask(
							"a*-999-a999")
		}
	}
}();