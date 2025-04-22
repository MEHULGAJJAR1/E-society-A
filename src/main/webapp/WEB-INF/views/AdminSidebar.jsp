<%-- 
<!-- <aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="admindashboard">
				<i class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		End Dashboard Nav

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-person-fill"></i><span>Users</span><i
				class="bi bi-chevron-down ms-auto"></i>
				
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="adduser"> <i class="bi bi-circle"></i><span>Add
							User</span>
				</a></li>
				<li><a href="listuser"> <i class="bi bi-circle"></i><span>List
							User</span>
				</a></li>
			</ul></li>
			
		End Components Nav

Members
		<li class="nav-item"><a class="nav-link collapsed"
        data-bs-target="#members-nav" data-bs-toggle="collapse" href="#"> 
        <i class="bi bi-people-fill"></i><span>Members</span>
        <i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="members-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li><a href="listmembers"> <i class="bi bi-circle"></i><span>Members List</span></a></li>
        <li><a href="newmember"> <i class="bi bi-circle"></i><span>Add Member</span></a></li>
    </ul>
</li>
		
		
     	vehicle
			
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#ico-nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-calendar-event-fill"></i><span>Vehicle</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="ico-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="newvehicle"> <i class="bi bi-circle"></i><span>Add
							Vehicle</span>
				</a></li>
				<li><a href="listvehicle"> <i class="bi bi-circle"></i><span>List
							Vehicle</span>
				</a></li>
			</ul></li>
			

 		
 		
 	Visitor category
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#nav" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-calendar-event-fill"></i><span>VisitorCategory</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="addvisitorcategory"> <i class="bi bi-circle"></i><span>Add 
							VisitorCategory</span>
				</a></li>
				<li><a href="listvisitorcategory"> <i class="bi bi-circle"></i><span>List
						VisitorCategory</span>
				</a></li>
			</ul></li>
			
					
			visitor
			<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav2" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-calendar-event-fill"></i><span>Visitor</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav2" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="addvisitor"> <i class="bi bi-circle"></i><span>Add
							Visitor</span>
				</a></li>
				<li><a href="listvisitor"> <i class="bi bi-circle"></i><span>List
							Visitor</span>
				</a></li>
			</ul></li>
			
			
			
			
			deliverables
		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#icons-nav3" data-bs-toggle="collapse" href="#"> <i
				class="bi bi-calendar-event-fill"></i><span>Deliverables</span><i
				class="bi bi-chevron-down ms-auto"></i>
		</a>
			<ul id="icons-nav3" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="adddeliverables"> <i class="bi bi-circle"></i><span>Add
							Deliverables</span>
				</a></li>
				<li><a href="listdeliverables"> <i class="bi bi-circle"></i><span>List
							Deliverables</span>
				</a></li>
			</ul></li>
			
			
			
		
	
		End Icons Nav

		<li class="nav-heading">Manage</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="contactus"> <i class="bi bi-person-lines-fill"></i> <span>Contact Us</span>
		</a></li>
		End Profile Page Nav

		<li class="nav-item"><a class="nav-link collapsed"
			href="logout"> <i class="bi bi-power"></i> <span>Log Out</span>
		</a></li>
		End Profile Page Nav


	</ul>

</aside> -->

<jsp:include page="AdminHeader.jsp"></jsp:include>
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link active" href="admindashboard">
                <i class="fas fa-tachometer-alt"></i> 
                <span>Dashboard</span>
                <span class="active-indicator"></span>
            </a>
        </li>
        <!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="fas fa-user"></i>
                <span>Users</span>
                <i class="fas fa-chevron-down dropdown-icon"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="adduser">
                        <i class="fas fa-plus-circle"></i>
                        <span>Add User</span>
                    </a>
                </li>
                <li>
                    <a href="listuser">
                        <i class="fas fa-list"></i>
                        <span>List User</span>
                    </a>
                </li>
            </ul>
        </li>
        <!-- End Components Nav -->

        <!-- Members -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#members-nav" data-bs-toggle="collapse" > 
                <i class="fas fa-users"></i>
                <span>Members</span>
                <i class="fas fa-chevron-down dropdown-icon"></i>
            </a>
            <ul id="members-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                	<a href="newmember">
                        <i class="fas fa-user-plus"></i>
                        <span>New Member</span>
                    </a>
                	
                </li>
                <li>
                   <a href="listmembers">
                        <i class="fas fa-list"></i>
                        <span>List Member</span>
                    </a>
                </li>
            </ul>
        </li>
        
        <!-- Vehicle -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#ico-nav" data-bs-toggle="collapse" > 
                <i class="fas fa-car"></i>
                <span>Vehicle</span>
                <i class="fas fa-chevron-down dropdown-icon"></i>
            </a>
            <ul id="ico-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="newvehicle">
                        <i class="fas fa-plus-circle"></i>
                        <span>Add Vehicle</span>
                    </a>
                </li>
                <li>
                    <a href="listvehicle">
                        <i class="fas fa-list"></i>
                        <span>List Vehicle</span>
                    </a>
                </li>
            </ul>
        </li>

       
        
        <!-- Visitor -->
        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#icons-nav2" data-bs-toggle="collapse" > 
                <i class="fas fa-user-friends"></i>
                <span>Visitor</span>
                <i class="fas fa-chevron-down dropdown-icon"></i>
            </a>
            <ul id="icons-nav2" class="nav-content collapse" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="addvisitor">
                        <i class="fas fa-plus-circle"></i>
                        <span>Add Visitor</span>
                    </a>
                </li>
                <li>
                    <a href="listvisitor">
                        <i class="fas fa-list"></i>
                        <span>List Visitor</span>
                    </a>
                </li>
            </ul>
        </li>
        
        
        
        <!-- Manage Section -->
        <li class="nav-heading">
            <span>Manage</span>
            <div class="heading-line"></div>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="contactus">
                <i class="fas fa-envelope"></i>
                <span>Contact Us</span>
            </a>
        </li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="logout">
                <i class="fas fa-sign-out-alt"></i>
                <span>Log Out</span>
            </a>
        </li>

    </ul>

</aside>

 --%>
 <aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item"><a class="nav-link " href="admindashboard">
				<i class="bi bi-grid"></i> <span>Dashboard</span>
		</a></li>
		<!-- End Dashboard Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
				<i class="bi bi-person-fill"></i><span>Users</span><i
				class="bi bi-chevron-down ms-auto"></i>
				
		</a>
			<ul id="components-nav" class="nav-content collapse "
				data-bs-parent="#sidebar-nav">
				<li><a href="adduser"> <i class="bi bi-circle"></i><span>Add
							User</span>
				</a></li>
				<li><a href="listuser"> <i class="bi bi-circle"></i><span>List
							User</span>
				</a></li>
			</ul></li>
			
		<!-- End Components Nav -->




		
			
	<!-- Members -->
<li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#members-nav" data-bs-toggle="collapse" href="#"> 
        <i class="bi bi-people-fill"></i><span>Members</span>
        <i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="members-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li><a href="listmembers"><i class="bi bi-circle"></i><span>Members List</span></a></li>
        <li><a href="newmember"><i class="bi bi-circle"></i><span>Add Member</span></a></li>
    </ul>
</li>

<!-- Vehicle -->
<li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#vehicle-nav" data-bs-toggle="collapse" href="#"> 
        <i class="bi bi-car-front-fill"></i><span>Vehicle</span>
        <i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="vehicle-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li><a href="newvehicle"><i class="bi bi-circle"></i><span>Add Vehicle</span></a></li>
        <li><a href="listvehicle"><i class="bi bi-circle"></i><span>List Vehicle</span></a></li>
    </ul>
</li>

<!-- Visitor -->
<li class="nav-item">
    <a class="nav-link collapsed" data-bs-target="#visitor-nav" data-bs-toggle="collapse" href="#"> 
        <i class="bi bi-person-walking"></i><span>Visitor</span>
        <i class="bi bi-chevron-down ms-auto"></i>
    </a>
    <ul id="visitor-nav" class="nav-content collapse" data-bs-parent="#sidebar-nav">
        <li><a href="addvisitor"><i class="bi bi-circle"></i><span>Add Visitor</span></a></li>
        <li><a href="listvisitor"><i class="bi bi-circle"></i><span>List Visitor</span></a></li>
    </ul>
</li>

        <!-- Visitor -->
       
		
		
		<!-- End Icons Nav -->

		<li class="nav-heading">Manage</li>

		<li class="nav-item"><a class="nav-link collapsed"
			href="contactus"> <i class="bi bi-person-lines-fill"></i> <span>Contact Us</span>
		</a></li>
		
		
		
		<!-- End Profile Page Nav -->

		<li class="nav-item"><a class="nav-link collapsed"
			href="login"> <i class="bi bi-power"></i> <span>Log Out</span>
		</a></li>
		<!-- End Profile Page Nav -->


	</ul>

</aside>