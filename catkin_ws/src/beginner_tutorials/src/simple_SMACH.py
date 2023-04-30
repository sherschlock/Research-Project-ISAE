#!/usr/bin/env python

import roslib
import rospy
import smach
import smach_ros

# define state Foo

class Foo(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['continue','exit'])                   # Here we define all the possible outcomes of the state
        self.counter = 0

    def execute(self,userdata):                                 # This is where the main body of the state will be coded
        rospy.loginfo('Executing state F00')                   # Just like a print statement
        if self.counter < 3:
            self.counter += 1
            return 'continue'
        else:
            return 'exit'

# define state Bar

class Bar(smach.State):
    def __init__(self):
        smach.State.__init__(self,outcomes=['back_to_foo'])
    
    def execute(self,userdata):
        rospy.loginfo('Running Bar')
        return 'back_to_foo'


def main():
    rospy.init_node('simple_SMACH')

    # Creating a SMACH state machine
    sm = smach.StateMachine(['finished'])

    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('FOO',Foo(),transitions={'continue':'BAR','exit':'finished'})
        smach.StateMachine.add('BAR',Bar(),transitions={'back_to_foo':'FOO'})
    
    # Create and start the introspection server                                     # In order to start the smach viewer, use the command - rosrun smach_viewer smach_viewer.py
    sis = smach_ros.IntrospectionServer('server_name',sm,'/SM_ROOT')
    sis.start()

    # Execute SMACH plan
    outcome = sm.execute()
    rospy.spin()
    sis.stop()

if __name__ == '__main__':
    main()

