# OSE Universal Axis Macro
The [Universal Axis](https://wiki.opensourceecology.org/wiki/Universal_CNC_Axis) is a modular and scalable CNC axis for creating cartesian CNC machines.

This FreeCAD macro creates Universal Axis objects allowing the user to adjust properties like `Length` automatically.

![Universal Axis object in FreeCAD](universal-axis.png)

## Setup
1. Clone the repository
2. Link the macro to your FreeCAD macro directory by running the `link_macro.sh` shell script:

```
./link_macro.sh
```

## Python Usage

```python
from universal_axis import create_universal_axis

document = App.ActiveDocument
universal_axis = create_universal_axis(document, 'UniversalAxis')
document.recompute()
```

## FreeCAD Version Information
Tested and developed with the following FreeCAD version:

```
OS: Linux
Word size of OS: 64-bit
Word size of FreeCAD: 64-bit
Version: 0.18.16093 (Git)
Build type: Unknown
Branch: master
Hash: 690774c0effe4fd7b8d2b5e2fb2b8c8d145e21ce
Python version: 2.7.12
Qt version: 4.8.7
Coin version: 4.0.0a
OCC version: 7.0.0
Locale: English/UnitedStates (en_US)
```
