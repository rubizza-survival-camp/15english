require "administrate/base_dashboard"

class RevisionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    lesson: Field::BelongsTo,
    pages: Field::HasMany,
    text_questions: Field::HasMany,
    image_questions: Field::HasMany,
    radio_questions: Field::HasMany,
    radio_image_questions: Field::HasMany,
    radio_image_text_questions: Field::HasMany,
    id: Field::Number,
    page_id: Field::Number,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :lesson,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :lesson,
    :pages,
    :text_questions,
    :image_questions,
    :radio_questions,
    :radio_image_questions,
    :radio_image_text_questions,
    :id,
    :page_id,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :pages,
    :lesson,
    :radio_questions,
    :radio_image_questions,
  ].freeze

  # Overwrite this method to customize how revisions are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(revision)
  #   "Revision ##{revision.id}"
  # end
end