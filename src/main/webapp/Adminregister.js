$("#contact_form").validate(
    {
        rules:{
            emp_id:{
                required:true,
                minlength:5
            },
            user_password:{
                required : true
            },
            confirm_password:{
                required:true,
                equalTo : "#user_password",
                minlength:4
            },
            first_name:"required",
            last_name:"required",
            department:"required",
            technologies:"required",
            domain:"required",
        },
            email:{
                required :true
            },
            contact_no:{
                required:true,
                minlength:10,
                maxlength:10
            },
        messages:{
            empid:{
                required:"please enter empid",
                minlength:"EmpId should have 4 characters"
            },
            first_name:"Enter First Name",
            last_name:"Enter Last Name",
            email:"Please enter your EmailId",
            contact_no:"please enter valid Contact_no",
            user_password:"Password is Required",
            technologies:"Select Technology",
            department:"Select Department",
            domain:"Select Domain",
            
            confirm_password:{
                required:"Confirm Password is required",
                equalTo : "password not matching",
            },


        },
        submitHandler:function(form){
            form.submit();
        }
    }
)