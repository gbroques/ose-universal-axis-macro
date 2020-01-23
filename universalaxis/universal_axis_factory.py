from .universal_axis_model import UniversalAxisModel


class UniversalAxisFactory:
    """
    Creates universal axis objects.

    Modular and scalable CNC axis used to create cartesian CNC machines.

    See Also:
        https://wiki.opensourceecology.org/wiki/Universal_CNC_Axis
    """

    def __init__(self, document):
        self.document = document

    def create(self, name):
        """
        Creates a universal axis object with the given name,
        and adds it to the document
        """
        obj = self.document.addObject('Part::FeaturePython', name)
        model = UniversalAxisModel(obj)
        obj.ViewObject.Proxy = 0  # Mandatory unless ViewProvider is coded
        self.document.recompute()
        return model
