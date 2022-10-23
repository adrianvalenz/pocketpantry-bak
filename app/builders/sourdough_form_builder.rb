class SourdoughFormBuilder < ActionView::Helpers::FormBuilder
  def email_field(method, options={})
    super(method, options.reverse_merge(class: "sd-email-field"))
  end

  def password_field(method, options={})
    super(method, options.reverse_merge(class: "sd-password-field"))
  end

  def check_box(method, options={})
    super(method, options.reverse_merge(class: "sd-check-box"))
  end

  def label(method, options={})
    super(method, options.reverse_merge(class: "sd-label"))
  end
end
