#!/usr/bin/env python

import roslib;
import rospy
import smach
import smach_ros

# define state Foo

class Foo(smach.State):
    def __init__(self):
        smach.State.__init__(self, 
                             outcomes=['continue','exit'],
                             input_keys=['foo_counter_in'],                             # These input and output keys basically take in and give out data.
                             output_keys=['foo_counter_out'])

    def execute(self, userdata):
        rospy.loginfo('Running FOO')
        if userdata.foo_counter_in < 3:
            userdata.foo_counter_out = userdata.foo_counter_in + 1
            return 'continue'
        else:
            return 'exit'


# define state Bar

class Bar(smach.State):
    def __init__(self):
        smach.State.__init__(self, 
                             outcomes=['back_to_foo'],
                             input_keys=['bar_counter_in'])
        
    def execute(self, userdata):
        rospy.loginfo('Running BAR')
        rospy.loginfo(userdata.bar_counter_in)        
        return 'back_to_foo'
        




def main():
    rospy.init_node('userdata_SMACH')

    # Create a SMACH state machine
    sm = smach.StateMachine(outcomes=['finished'])
    sm.userdata.sm_counter = 0

    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('FOO', Foo(), 
                               transitions={'continue':'BAR', 
                                            'exit':'finished'},
                               remapping={'foo_counter_in':'sm_counter',                    # Since foo_counter_in takes the value of the sm global counter, FOO is the state where the
                                          'foo_counter_out':'sm_counter'})                  # machine is gonna start from
                                                                                            # How to read this - foo_counter_in gets its data from sm_counter
        smach.StateMachine.add('BAR', Bar(), 
                               transitions={'back_to_foo':'FOO'},
                               remapping={'bar_counter_in':'sm_counter'})

    # Create and start the introspection server                                     # In order to start the smach viewer, use the command - rosrun smach_viewer smach_viewer.py
    sis = smach_ros.IntrospectionServer('server_name',sm,'/SM_ROOT')
    sis.start()

    # Execute SMACH plan
    outcome = sm.execute()
    rospy.spin()
    sis.stop()

if __name__ == '__main__':
    main()