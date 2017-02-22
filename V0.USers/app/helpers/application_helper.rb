module ApplicationHelper
    def button_delete_with_icon(text, path, classes)
        form_tag path, :method => :delete do
            button_tag(classes) do
            raw text
            end
        end
    end
end
