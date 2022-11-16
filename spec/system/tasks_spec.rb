require 'rails_helper'

RSpec.describe 'タスクのCRUD処理', type: :system do
  before do
    driven_by(:rack_test)
  end

  describe 'タスクの一覧画面' do
    before do
      FactoryBot.create(:task, name: '勉強をする', contents: '数学と英語')
    end

    it 'タスクと内容が表示される' do
      visit tasks_path
      expect(page).to have_content '勉強をする'
      expect(page).to have_content '数学と英語'
    end
  end
end
