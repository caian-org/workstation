# pylint: disable=C0111,R0903

"""Displays the acpibright of a display

Requires the following executable:
    * xbacklight

Parameters:
    * acpibright.step: The amount of increase/decrease on scroll in % (defaults to 2)

"""

import bumblebee.input
import bumblebee.output
import bumblebee.engine

class Module(bumblebee.engine.Module):
    def __init__(self, engine, config):
        super(Module, self).__init__(engine, config,
            bumblebee.output.Widget(full_text=self.acpibright)
        )
        self._acpibright = 0

        step = self.parameter("step", 2)

        engine.input.register_callback(self, button=bumblebee.input.WHEEL_UP,
            cmd="acpilight +{}%".format(step))
        engine.input.register_callback(self, button=bumblebee.input.WHEEL_DOWN,
            cmd="acpilight -{}%".format(step))

    def acpibright(self, widget):
        return "{:03.0f}%".format(self._acpibright)

    def update(self, widgets):
        self._acpibright = float(bumblebee.util.execute("acpilight -get"))

# vim: tabstop=8 expandtab shiftwidth=4 softtabstop=4
