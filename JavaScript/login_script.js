//function confirmLogout() {
//            var result = confirm("Are you sure you want to logout?");
//            if(result) {
//                window.location = "index.jsp";
//            }
//            
//        }

const logoutLink=document.getElementById('logoutLink');
logoutLink.addEventListener('click',function(event){
    event.preventDefault();
    
    const isConfirmed=confirm('Are you sure you want to logout?');
    
    if(isConfirmed){
        window.location.href='index.jsp';
    }
});
