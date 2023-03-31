require "aisu/start"

module AIShell
    module Aisu

        unless file_loaded?(__FILE__)
            menu = UI.menu("Plugins")
            submenu = menu.add_submenu("Aisu")
            submenu.add_item("Start") { Aidialog.start }
        end

    end
end
