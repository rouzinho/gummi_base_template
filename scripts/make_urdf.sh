#!/bin/bash

## Creates URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro
# the paths are going to look bad, but that is how I got this working. If you
# want to fiddle with cmake variables and pass the right working directories,
# please do and update all these paths.

echo "** Creating URDF file from gummi_description_base.urdf.xacro and gummi_description_ee.urdf.xacro."

. ../../devel/setup.bash

export GUMMIBASEPATH=${PWD}
export GUMMIEEPATH=${PWD}/../gummi_ee_${ROS_GUMMI_EE}
rosrun xacro xacro --inorder ${GUMMIBASEPATH}/xacro/gummi_description.urdf.xacro base:=${GUMMIBASEPATH} ee:=${GUMMIEEPATH} > ${GUMMIBASEPATH}/urdf/gummi_description.urdf
