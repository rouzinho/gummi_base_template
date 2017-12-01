# gummi_base_mayo

Old gummi_description package, now separated into gummi_base_XXX and gummi_ee_XXX for easier change of end effectors.

## Setting up a new base

Fork or clone this repository. 

Rename gummi_base_template to gummi_base_YOUR_OWN_BASE

`$ mv gummi_base_template gummi_base_YOUR_OWN_BASE`

Edit the file gummi_base_YOUR_OWN_BASE/set_env_gummi.sh

`$ gedit gummi_base_YOUR_OWN_BASE/set_env_gummi.sh`

And change the line containing "export ROS_GUMMI_BASE=template" to "export ROS_GUMMI_BASE=YOUR_OWN_BASE"

You can now proceed to change gummi_base_YOUR_OWN_BASE/launch/controllers_base.launch to contain the motor drivers that your base has and where they are connected in the bus and the updating the yaml definitions of joints in gummi_base_YOUR_OWN_BASE/dynamixel

TO DO:
 - move mesh definitions to ee package
 - move calibration files to ee package
 - integrate alterations into gummi_interface
