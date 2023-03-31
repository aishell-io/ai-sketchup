require "sketchup.rb"
require "extensions.rb"

module AIShell
    module Aisu

        Loader = File.join('aisu', 'loader')

        Caption = 'Aisu - ChatGPT for SketchUp'
        Version = '0.0.1'
        Author = 'Henry Hu'
        Year = '2023'
        Legal = 'All Rights Reserved'

        if Year.empty?
            Copyright = "#{Legal}"
        elsif Year =~ /\A\D/
            Copyright = "#{Year}, #{Legal}"
        else
            Copyright = "©#{Year}, #{Legal}"
        end

        unless defined?(@@extension)
            @@extension = SketchupExtension.new(Caption, Loader)
            @@extension.instance_eval %{
                description= 'A SketchUp extension that integrates with ChatGPT.'
                version= "#{Version}"
                creator= "#{Author}"
                copyright= "#{Copyright}"
            }
            Sketchup.register_extension(@@extension, true)
        end

        def extension()
            @@extension
        end
        module_function(:extension)

    end
end
