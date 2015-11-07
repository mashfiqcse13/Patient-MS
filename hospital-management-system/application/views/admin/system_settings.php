<div class="box">
	<div class="box-header">
    
    	<!------CONTROL TABS START------->
		<ul class="nav nav-tabs nav-tabs-left">

			<li class="<?php if(!isset($edit_profile))echo 'active';?>">
            	<a href="#list" data-toggle="tab"><i class="icon-align-justify"></i> 
					<?php echo get_phrase('system_settings');?>
                    	</a></li>
		</ul>
    	<!------CONTROL TABS END------->
        
	</div>
	<div class="box-content padded">
		<div class="tab-content">
        	<!----EDITING FORM STARTS---->
			<div class="tab-pane box active" id="edit" style="padding: 5px">
                <div class="box-content padded">
                		<!--SYSTEM NAME-->
                		<?php echo form_open('admin/system_settings/system_name/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('system_name');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'system_name'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--SYSTEM EMAIL-->
                		<?php echo form_open('admin/system_settings/system_email/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('system_email');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'system_email'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--SYSTEM TITLE-->
                		<?php echo form_open('admin/system_settings/system_title/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('system_title');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'system_title'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--ADDRESS-->
                		<?php echo form_open('admin/system_settings/address/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('address');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'address'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--phone-->
                		<?php echo form_open('admin/system_settings/phone/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('phone');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'phone'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--paypal_email-->
                		<?php echo form_open('admin/system_settings/paypal_email/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('paypal_email');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'paypal_email'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--currency-->
                		<?php echo form_open('admin/system_settings/currency/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('currency');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'currency'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--buyer-->
                		<?php echo form_open('admin/system_settings/buyer/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('buyer');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'buyer'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--purchase code-->
                		<?php echo form_open('admin/system_settings/purchase_code/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('purchase_code');?></label>
                                <div class="controls">
                                    <input type="text" class="" name="description" 
                                    	value="<?php echo $this->db->get_where('settings' , array('type'=>'purchase_code'))->row()->description;?>"/>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--default language-->
                		<?php echo form_open('admin/system_settings/language/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('language');?></label>
                                <div class="controls">
                                    <select name="description">
                                    	<?php
										$fields = $this->db->list_fields('language');
										foreach ($fields as $field)
										{
											if ($field == 'phrase_id' || $field == 'phrase')continue;
											
											$current_default_language	=	$this->db->get_where('settings' , array('type'=>'language'))->row()->description;
											?>
                                    		<option value="<?php echo $field;?>"
                                            	<?php if ($current_default_language == $field)echo 'selected';?>> <?php echo $field;?> </option>
                                            <?php
										}
										?>
                                    </select>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                		<!--text align-->
                		<?php echo form_open('admin/system_settings/text_align/do_update/' , array('class' => 'form-horizontal validatable'));?>                            
                            <div class="control-group">
                                <label class="control-label"><?php echo get_phrase('text_align');?></label>
                                <div class="controls">
                                    <?php $text_align	=	$this->db->get_where('settings' , array('type'=>'text_align'))->row()->description;?>
                                    <select name="description">
                                    	<option value="left-to-right" <?php if ($text_align == 'left-to-right')echo 'selected';?>> left-to-right</option>
                                    	<option value="right-to-left" <?php if ($text_align == 'right-to-left')echo 'selected';?>> right-to-left</option>
                                    </select>
                                    <button type="submit" class="btn btn-blue"><?php echo get_phrase('save');?></button>
                                    
                                </div>
                            </div>
                        <?php echo form_close();?>
                        
                        
					
                </div>
			</div>
            <!----EDITING FORM ENDS--->
            
		</div>
	</div>
</div>