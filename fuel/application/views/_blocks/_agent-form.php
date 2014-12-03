									<?php $attributes = array('id' => 'becomeagent');
										echo form_open('aboutus_agent/mesaj', $attributes); ?>

								
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Nume', 'name', $attributes);?>	
										<?php echo form_error('name'); ?>
										<input type="text" name="name" value="<?php echo set_value('name'); ?>" size="25" class = "agent-input"/>
									</div>

									
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Prenume', 'firtsname', $attributes);?>
										<?php echo form_error('firtsname'); ?>
										<input type="text" name="firtsname" value="<?php echo set_value('firtsname'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Oras', 'city', $attributes);?>
										<?php echo form_error('city'); ?>
										<input type="text" name="city" value="<?php echo set_value('city'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box input-box-jumate">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Telefon', 'phone', $attributes);?>
										<?php echo form_error('phone'); ?>
										<input type="text" name="phone" value="<?php echo set_value('phone'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box input-box-jumate">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Varsta', 'age', $attributes);?>
										<?php echo form_error('age'); ?>
										<input type="text" name="age" value="<?php echo set_value('age'); ?>" size="25" class = "agent-input"/>
									</div>
									
									<div class="clearfix"></div>

									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Nume firma', 'org', $attributes);?>
										<?php echo form_error('org'); ?>
										<input type="text" name="org" value="<?php echo set_value('org'); ?>" size="25" class = "agent-input"/>
									</div>
									
									<div class = "input-box">
										<?php $attributes = array('class' => 'agent-lable');
										echo form_label('Email', 'email', $attributes);?>
										<?php echo form_error('email'); ?>
										<input type="text" name="email" value="<?php echo set_value('email'); ?>" size="25" class = "agent-input"/>
									</div>

									<div class = "input-box">
										<button type="submit" value="send" class = "agent-submit">Trimite</button>
									</div>

								</form>
