<?php
/*
 * Sidebar Menu Items - These collapse to the responsive navigation menu on small screens
 */
?>
<!--<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
        <li>
            <a href="index.html"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
        </li>
        <li>
            <a href="charts.html"><i class="fa fa-fw fa-bar-chart-o"></i> Charts</a>
        </li>
        <li>
            <a href="tables.html"><i class="fa fa-fw fa-table"></i> Tables</a>
        </li>
        <li>
            <a href="forms.html"><i class="fa fa-fw fa-edit"></i> Forms</a>
        </li>
        <li>
            <a href="bootstrap-elements.html"><i class="fa fa-fw fa-desktop"></i> Bootstrap Elements</a>
        </li>
        <li>
            <a href="bootstrap-grid.html"><i class="fa fa-fw fa-wrench"></i> Bootstrap Grid</a>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
            <ul id="demo" class="collapse">
                <li>
                    <a href="#">Dropdown Item</a>
                </li>
                <li>
                    <a href="#">Dropdown Item</a>
                </li>
            </ul>
        </li>
        <li class="active">
            <a href="blank-page.html"><i class="fa fa-fw fa-file"></i> Blank Page</a>
        </li>
        <li>
            <a href="index-rtl.html"><i class="fa fa-fw fa-dashboard"></i> RTL Dashboard</a>
        </li>
    </ul>
</div>-->
<div class="collapse navbar-collapse navbar-ex1-collapse">
    <ul class="nav navbar-nav side-nav">
        <li>
            <a href="<?= site_url()?>"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#patient">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Patient 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="patient" class="collapse">
                <li>
                    <a href="<?= site_url('admin/patient/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/patient')?>">Management</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#prescription">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Prescription 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="prescription" class="collapse">
                <li>
                    <a href="<?= site_url('admin/prescription/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/prescription')?>">Management</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#doctor">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Doctor 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="doctor" class="collapse">
                <li>
                    <a href="<?= site_url('admin/doctor/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/doctor')?>">Management</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#hospital">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Hospital 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="hospital" class="collapse">
                <li>
                    <a href="<?= site_url('admin/hospital/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/hospital')?>">Management</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#test">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Tests 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="test" class="collapse">
                <li>
                    <a href="<?= site_url('admin/test/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/test')?>">Management</a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;" data-toggle="collapse" data-target="#user">
                <i class="fa fa-fw fa-arrows-v"></i> 
                Users 
                <i class="fa fa-fw fa-caret-down"></i>
            </a>
            <ul id="user" class="collapse">
                <li>
                    <a href="<?= site_url('admin/user/add')?>">Entry</a>
                </li>
                <li>
                    <a href="<?= site_url('admin/user')?>">Management</a>
                </li>
            </ul>
        </li>
    </ul>
</div>