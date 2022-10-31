class SourdoughFormBuilder < ActionView::Helpers::FormBuilder
  def label(method, options={})
    super(method, options.reverse_merge(class: "font-sans font-bold"))
  end
  
  def email_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1 border border-rose-300"))
  end

  def password_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1 border border-rose-300"))
  end

  def check_box(method, options={})
    super(method, options.reverse_merge(class: "rounded-md"))
  end

  def text_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1 border border-rose-300"))
  end

  def file_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1"))
  end
  
  def submit(method, options={})
    super(method, options.reverse_merge(class: "btn btn-submit"))
  end
end

# https://gist.github.com/adrianvalenz/a76ab4104b41b189f5c72ae13835b2ad
# Refer to link for other form methods to style

