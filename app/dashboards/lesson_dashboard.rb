# frozen_string_literal: true

require "administrate/base_dashboard"

class LessonDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    subject: Field::BelongsTo,
    learning_process_states: Field::HasMany,
    users: Field::HasMany,
    questions: Field::HasMany,
    words: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    word_id: Field::Number,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :title,
    :subject,
    :users
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :subject,
    :users,
    :questions,
    :words,
    :title,
    :created_at,
    :updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :title,
    :subject,
    :users
  ].freeze

  # Overwrite this method to customize how lessons are displayed
  # across all pages of the admin dashboard.
  def display_resource(lesson)
    lesson.title
  end
end
