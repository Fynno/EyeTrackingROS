// Generated by gencpp from file arm_kinematics/Joint_angles.msg
// DO NOT EDIT!


#ifndef ARM_KINEMATICS_MESSAGE_JOINT_ANGLES_H
#define ARM_KINEMATICS_MESSAGE_JOINT_ANGLES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace arm_kinematics
{
template <class ContainerAllocator>
struct Joint_angles_
{
  typedef Joint_angles_<ContainerAllocator> Type;

  Joint_angles_()
    : t1(0)
    , t2(0)
    , t3(0)  {
    }
  Joint_angles_(const ContainerAllocator& _alloc)
    : t1(0)
    , t2(0)
    , t3(0)  {
  (void)_alloc;
    }



   typedef int64_t _t1_type;
  _t1_type t1;

   typedef int64_t _t2_type;
  _t2_type t2;

   typedef int64_t _t3_type;
  _t3_type t3;





  typedef boost::shared_ptr< ::arm_kinematics::Joint_angles_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::arm_kinematics::Joint_angles_<ContainerAllocator> const> ConstPtr;

}; // struct Joint_angles_

typedef ::arm_kinematics::Joint_angles_<std::allocator<void> > Joint_angles;

typedef boost::shared_ptr< ::arm_kinematics::Joint_angles > Joint_anglesPtr;
typedef boost::shared_ptr< ::arm_kinematics::Joint_angles const> Joint_anglesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::arm_kinematics::Joint_angles_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::arm_kinematics::Joint_angles_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace arm_kinematics

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'arm_kinematics': ['/home/fynn/Documents/unistuff/PA/EyeTrackingROS/catkin_ws/src/arm_kinematics/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::arm_kinematics::Joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::arm_kinematics::Joint_angles_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::arm_kinematics::Joint_angles_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "746144a4e9cc3ba3202f5653eb074672";
  }

  static const char* value(const ::arm_kinematics::Joint_angles_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x746144a4e9cc3ba3ULL;
  static const uint64_t static_value2 = 0x202f5653eb074672ULL;
};

template<class ContainerAllocator>
struct DataType< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "arm_kinematics/Joint_angles";
  }

  static const char* value(const ::arm_kinematics::Joint_angles_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 t1\n"
"int64 t2\n"
"int64 t3\n"
;
  }

  static const char* value(const ::arm_kinematics::Joint_angles_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.t1);
      stream.next(m.t2);
      stream.next(m.t3);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Joint_angles_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::arm_kinematics::Joint_angles_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::arm_kinematics::Joint_angles_<ContainerAllocator>& v)
  {
    s << indent << "t1: ";
    Printer<int64_t>::stream(s, indent + "  ", v.t1);
    s << indent << "t2: ";
    Printer<int64_t>::stream(s, indent + "  ", v.t2);
    s << indent << "t3: ";
    Printer<int64_t>::stream(s, indent + "  ", v.t3);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ARM_KINEMATICS_MESSAGE_JOINT_ANGLES_H
