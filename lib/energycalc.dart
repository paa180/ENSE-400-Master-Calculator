import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Energycalc extends StatefulWidget {
  const Energycalc({Key? key}) : super(key: key);

  @override
  _EnergycalcState createState() => _EnergycalcState();
}

class _EnergycalcState extends State<Energycalc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //background color
      appBar: AppBar(
        title: const Text("Definition", style: TextStyle(fontSize: 25)),
        backgroundColor: Colors.indigo, //top background color and styles
      ),
      body: SingleChildScrollView(
        // <-- wrap this around
        child: Column(
          children: const <Widget>[
            Text(
              '''
Def: Kinetic Energy
Kinetic Energy is an energy that the object possesses
due to its motion. It is defined as the work needed
to accelerate a body of a given mass from rest to 
its stated velocity. Its international System 
of Unit (SI) is Joule (J).

Def: Potential Energy
An object can store energy as the result of its position.
For example, the heavy ball of a demolition machine is
storing energy when it is held at an elevated position. 
Potential energy is energy held by an object because of
 its position relative to other objects. 
 Its international System ofUnit (SI) is Joule (J).

Def: Thermal Energy
Thermal energy is energy that comes from a substance whose 
molecules and atoms are vibrating faster due to a rise in temperature.
Its international System of Unit (SI) is Joule (J).
            
Def: Work Energy
Work energy is the product of force applied and the distance 
moved by the body on the application of the force. 
Its international System of Unit (SI) is Joule (J).
            
Def: Power
power is the amount of energy transferred or converted per unit time.
Its international System of Unit (SI) is watt (w).
            
Def: Voltage
voltage is an electric potential difference per unit charge 
between two points in an electric field. It’s also known as
electric potential difference, electromotive force emf, 
electric pressure, or electric tension. 
Its international System of Unit (SI) is volt.
            
Def: Density
The density of a substance is its mass per unit volume. 
Its international System of Unit (SI) is kg/m³
         
Def: Pressure
Pressure is the force applied perpendicular to the surface
of an object per unit area over which that force is distributed. 
Its international System of Unit (SI) is pascal (pa).
         
Def: Electromotive Force
Electromotive force is electric potential produced by either
electrochemical cell or by changing the magnetic field.
EMF is the commonly used acronym for electromotive force. 
Its international System of Unit (SI) is volt.
         
Def: Frequencey
Frequency is the number of occurrences of a repeating
event per unit of time.  Its international System of
Unit (SI) is 1/s.
         
Def: Velocity
The velocity of an object is the rate of change 
of its position with respect to a frame of reference 
and is a function of time.   Its international System
of Unit (SI) is m/s.
         
Def: Acceleration
Acceleration is defined as the rate that a moving object 
changes its velocity.  Its international System of Unit 
(SI) is m/s^2.
        
Def: Electric Field
An electric field is the physical field that surrounds 
electrically charged particles and exerts force on all
other charged particles in the field, either attracting
or repelling them. Its international System of Unit (SI)
is newtons per coulomb (N/C), or volts per meter (V/m).
       
Def: Electric Charge
Electric charge is the physical property of matter that 
causes it to experience a force when placed in an electromagnetic
field. Electric charge can be positive or negative. Like charges
repel each other and unlike charges attract each other. 
Its international System of Unit (SI) is coulomb.
        
DEF: Volume
volume is the amount of space in a certain 3D object, or the capacity 
of the container. For example, the space that a substance (solid, 
liquid, gas, or plasma) or 3D shape occupies or contains.  
Its international System of Unit (SI) is m³.
        
Def: Area
The area of a figure is the number of unit squares that cover 
the surface of a closed figure. Its international System of Unit 
(SI) is m2.
        
Def: Interest
Interest is the cost of borrowing money, where the borrower pays
a fee to the lender for the loan. The interest, typically expressed
as a percentage, can be either simple or compounded.
        
Def: Angular Velocity
Angular velocity or rotational velocity, also known as angular 
frequency vector, is a vector measure of rotation rate, that 
refers to how fast an object rotates or revolves relative to 
another point. For example, how fast the angular position 
or orientation of an object changes with time.
        
Def: Resistivity
Resistivity is an electrical resistance of a conductor of 
unit cross-sectional area and unit length. 
Its international System of Unit (SI) (Ω.m)\n'
         
Def: Resistivity and Conductivity
The electrical resistance of a wire would be expected to be
greater for a longer wire, less for a wire of larger cross 
sectional area, and would be expected to depend upon the 
material out of which the wire is made. Experimentally, 
the dependence upon these properties is a straightforward
one for a wide range of conditions, and the resistance of
a wire can be expressed as: 
              R = ρL/A
              ρ = resistivity
              L = Length
              A = Across sectional Area

              ''',
            ),
          ],
        ),
      ),
    );
  }
}
