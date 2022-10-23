class SourdoughFormBuilder < ActionView::Helpers::FormBuilder
  def email_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1"))
  end

  def password_field(method, options={})
    super(method, options.reverse_merge(class: "rounded-md px-2 py-1"))
  end

  def check_box(method, options={})
    super(method, options.reverse_merge(class: "rounded-md"))
  end

  def label(method, options={})
    super(method, options.reverse_merge(class: "italic"))
  end
  
  def submit(method, options={})
    super(method, options.reverse_merge(class: "bg-rose-500 text-rose-50 py-2 px-4 rounded-md cursor-pointer hover:bg-rose-600"))
  end
end
