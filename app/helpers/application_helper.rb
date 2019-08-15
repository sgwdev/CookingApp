module ApplicationHelper
    def button_to_add_fields(name, f, association)
        new_object = f.object.send(association).klass.new
        id = new_object.object_id
        fields = f.fields_for(association, new_object, child_index: id) do |builder|
          render(association.to_s.singularize + "_fields", f: builder)
        end
                
        button_tag("Add", id: id, onclick: "addField(event)",  data: { fields: fields.gsub("\n", "") }) +
        button_tag("Remove", onclick: "removeField(event)")
      end
end
