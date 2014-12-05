									<?php $attributes = array('id' => 'becomeagent');
										echo form_open('', $attributes); ?>

								
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_nume'), 'name', $attributes);?>	
										<?php echo form_error('name'); ?>
										<input type="text" name="name" value="<?php echo set_value('name'); ?>" size="25" class = "agent-input"/>
									</div>

									
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_prenume'), 'firstname', $attributes);?>
										<?php echo form_error('firstname'); ?>
										<input type="text" name="firstname" value="<?php echo set_value('firstname'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_oras'), 'city', $attributes);?>
										<?php echo form_error('city'); ?>
										<input type="text" name="city" value="<?php echo set_value('city'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box input-box-jumate">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_telefon'), 'phone', $attributes);?>
										<?php echo form_error('phone'); ?>
										<input type="text" name="phone" value="<?php echo set_value('phone'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box input-box-jumate">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_varsta'), 'age', $attributes);?>
										<?php echo form_error('age'); ?>
										<input type="text" name="age" value="<?php echo set_value('age'); ?>" size="25" class = "agent-input"/>
									</div>
									
									<div class="clearfix"></div>

									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_firma'), 'org', $attributes);?>
										<?php echo form_error('org'); ?>
										<input type="text" name="org" value="<?php echo set_value('org'); ?>" size="25" class = "agent-input"/>
									</div>
									
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label(lang('agent_email'), 'email', $attributes);?>
										<?php echo form_error('email'); ?>
										<input type="text" name="email" value="<?php echo set_value('email'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box">
										<button type="submit" name="submit_agentrequest" value="send" class = "agent-submit"><?php echo lang('agent_send');?></button>
									</div>

								</form>
